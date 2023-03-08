class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # rating_params = params[:rating]
    # @restaurants = Restaurant.where(rating: rating_params)
    @restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create!(params_restaurant)
    redirect_to restaurant_path([:id])
  end

  def edit
    @restaurant
  end

  def update
    @restaurant.update!(params_restaurant)
    redirect_to article_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
