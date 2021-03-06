class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant created successfully.'
    else
      render :new
    end
  end
  def new
    @restaurant = Restaurant.new
  end
  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
