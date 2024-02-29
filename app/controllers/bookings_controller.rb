class BookingsController < ApplicationController

  before_action :setting_car, only: [:new, :create]
  # before_validation :set_default_status, on: :create

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    @booking.status = "pending"
    if @booking.save
       redirect_to cars_path
    else render:new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to cars_path(@car)
  end

  private

  def setting_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end, :message)
  end
end
