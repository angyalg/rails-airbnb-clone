class SpacesController < ApplicationController
  def index
    @spaces_for_map = Space.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spaces_for_map) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.infowindow render_to_string(partial: "/spaces/map_box", locals: { space: space })
    end

    unless params[:search]
      @spaces = Space.all
      return
    end

    begin
       start_date = Date.parse(params[:search][:start_date])
       end_date = Date.parse(params[:search][:end_date])
       @spaces_what_overlap = Space.joins(:bookings).where.not('start_date > ? OR end_date < ?', params[:search][:end_date], params[:search][:start_date])
       @spaces = Space.all - @spaces_what_overlap
    rescue ArgumentError
       @spaces = Space.all
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
