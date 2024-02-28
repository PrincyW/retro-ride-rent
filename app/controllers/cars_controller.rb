class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_car, only: [:show, :destroy]

  def index
    @cars = Car.all
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dv6j3n8zg/image/upload/v1617193317/Car%20Rental%20App/car-marker-2.png')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :description, :photo_url, :city, :price)
  end
end
