class BookingsController < ApplicationController

  before_action :setting_car, only: [:new, :create]
  before_action :set_booking, only: [:destroy, :accept, :decline]
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
    else
      render:new
    end
  end

  def destroy
    @booking.destroy
    flash[:notice] = "Booking canceled successfully."
    redirect_to dashboard_path(anchor: 'my-bookings')
  end

  def accept
    @booking.update(status: "confirmed")
    flash[:notice] = "Booking accepted successfully."
    redirect_to dashboard_path(anchor: 'my-cars') # Redirect to the my-cars section
  end

  def decline
    @booking.update(status: "declined")
    flash[:notice] = "Booking declined successfully."
    redirect_to dashboard_path(anchor: 'my-cars') # Redirect to the my-cars section
  end

  private

  def setting_car
    @car = Car.find(params[:car_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end, :message)
  end
end
