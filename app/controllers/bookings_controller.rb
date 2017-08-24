class BookingsController < ApplicationController
  before_action :set_space, only: [:new, :create, :index]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = Booking.where(space_id: params[:space_id])
  end

  def show
    @booking = Booking.where(user_id: current_user.id).find(params[:id])
  end

  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = 'pending'
    @booking.space = @space
    @booking.user = current_user
    if @booking.save
      redirect_to space_booking_path(@space, @booking)
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

  def set_space
    @space = Space.find(params[:space_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
