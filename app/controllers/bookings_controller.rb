class BookingsController < ApplicationController
  before_action :set_space, only: [:new, :create, :index]
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show

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

  def set_booking
    @booking = Booking.where(user_id: current_user.id).find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
