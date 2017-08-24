class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    # unless params[:search]
    #   @spaces = Space.all
    # end

    unless params[:search].nil?

      begin
        start_date = Date.parse(params[:search][:start_date])
        end_date = Date.parse(params[:search][:end_date])
      rescue ArgumentError

      end

      if (start_date.is_a?(Date) && end_date.is_a?(Date))
        @date_selected_spaces = Space.joins(:bookings).where.not('start_date > ? OR end_date < ?', start_date, end_date)
        @spaces = (@spaces.nil? ? Space.all : @spaces) - @date_selected_spaces
      else
        @spaces = Space.all
      end

      unless params[:search][:location].empty?
        @spaces = @spaces.select { |space| space.address == params[:search][:location].capitalize }
      end

      unless params[:search][:category].empty?
        @spaces = @spaces.select { |space| space.category == params[:search][:category] }
      end
    else
      @spaces = Space.all
    end



    @hash = Gmaps4rails.build_markers(@spaces) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.infowindow render_to_string(partial: "/spaces/map_box", locals: { space: space })
    end
  end



  def show
    @space = Space.find(params[:id])
    @space_coordinates = { lat: @space.latitude, lng: @space.longitude }
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user_id = current_user.id
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)

    redirect_to space_path(@space)
  end

  def destroy
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :latitude, :longitude, :max_capacity, :price_per_day, :address, photos: [])
  end
end
