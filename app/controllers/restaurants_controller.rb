class RestaurantsController < ApplicationController
  # filter
  # before_action :<method_name>, except: [:<action1>]
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def featured
    # up to you
    @featured_restaurants = Restaurant.where(rating: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @new_restaurant = Restaurant.new
  end

  def create
    @new_restaurant = Restaurant.new(strong_params)

    if @new_restaurant.save
      redirect_to show_restaurant_path(@new_restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(strong_params)
      redirect_to show_restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    if @restaurant.destroy
      redirect_to restaurants_path
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def strong_params
    params.require(:restaurant).permit(:name, :rating, :address, :chef_name)
  end
end
