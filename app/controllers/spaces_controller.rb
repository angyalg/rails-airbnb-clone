class SpacesController < ApplicationController
  def index
    @spaces_for_map = Space.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spaces_for_map) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.infowindow render_to_string(partial: "/spaces/map_box", locals: { space: space })
    end

    if params[:search]
      @spaces = Space.left_outer_joins(:bookings).where.not('start_date > ? AND end_date < ?', params[:search][:end_date], params[:search][:start_date])
    else
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
  end

  def update
  end

  def destroy
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :latitude, :longitude, :max_capacity, :price_per_day, :address, photos: [])
  end
end
