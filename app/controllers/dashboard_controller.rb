class DashboardController < ApplicationController
  def index
    @spaces = Space.where(user_id: current_user.id)
  end
end
