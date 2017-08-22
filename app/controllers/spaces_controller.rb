class SpacesController < ApplicationController
  def index
    if params[:search]
      @spaces = Space.left_outer_joins(:bookings).where.not('start_date > ? AND end_date < ?', params[:search][:end_date], params[:search][:start_date])
    else
      @spaces = Space.all
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new()
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
    params.require(:space).permit(:name, :description, :max_capacity, :price_per_day, photos: [])
  end
end
