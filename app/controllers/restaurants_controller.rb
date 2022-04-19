class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]
  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create; end
end
