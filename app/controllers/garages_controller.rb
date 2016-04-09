class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
    @garage = Garage.new    
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def create
    @garage = Garage.new(garages_param)
    if @garage.save
      redirect_to garages_path
    else
      render 'new'
    end
  end

  def update
    @garage = Garage.find(params[:id])
    @garage.update(garages_param)
    redirect_to garages_path
  end

  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy
    redirect_to garages_path
  end

  private
  def garages_param
    params.require(:garage).permit(:name, :car_type)
  end
end
