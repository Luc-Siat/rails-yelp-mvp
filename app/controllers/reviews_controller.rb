class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index]
  before_action :set_review, only: [:new]

  def index
    @reviews = Reviews.all
  end

  def new; end

  def create
    @restaurant = Restaurant.new(review_params)
    @restaurant.save!
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
