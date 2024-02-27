class BookingsController < ApplicationController

  before_action :setting_car, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    @booking.save
    redirect_to cars_path
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
    params.require(:booking).permit(:date_begin, :date_end)
  end
end
