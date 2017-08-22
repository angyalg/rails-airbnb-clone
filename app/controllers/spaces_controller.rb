class SpacesController < ApplicationController
  def index
    # @spaces = Space.all
    @spaces = Space.where.not(latitude: nil, longitude: nil)

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
