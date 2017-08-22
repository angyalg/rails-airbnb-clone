class BookingsController < ApplicationController
  before_action :set_space, only: [:new, :create, :index]
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = 'pending'
    @booking.space_id = @space.id
    @booking.user_id = 1
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
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
