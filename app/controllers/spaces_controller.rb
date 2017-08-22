class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def space_params
    params.require(:space).permit(:name, :description, :max_capacity, :price_per_day, photos: [])
  end
end
