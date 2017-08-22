class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @booking = Booking.new
    @space = Space.new
  end
end
