class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.where(restaurant: @restaurant)
    @new_review = Review.new
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @new_review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.where(restaurant: @restaurant)
    @new_review = Review.new(review_params)
    @new_review.restaurant = @restaurant

    if @new_review.save
      redirect_to restaurant_reviews_path(@restaurant)
    else
      render :index
    end

  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
