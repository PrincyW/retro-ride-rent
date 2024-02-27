class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @cars = @user.cars
  end
end
