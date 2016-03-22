class CarsController < ApplicationController
  def create
    @garage = Garage.find(params[:garage_id])
    @car = @garage.cars.create(car_params)
    @car.user_id = current_user.id
    @car.save
    redirect_to garage_path(@garage)
  end

  def destroy
    @garage = Garage.find(params[:garage_id])
    @car = @garage.cars.find(params[:id])
    @car.destroy
    redirect_to garage_path(@garage)
  end

  private
  def car_params
    params.require(:car).permit(:make, :model, :user_id)
  end
end
