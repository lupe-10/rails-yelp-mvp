class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show, :edit, :update, :destroy ]

    def index
      @restaurants = Restaurant.all
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    end

    def new
      @restaurant = Restaurant.new
    end

    def create
      @restaurant = Restaurant.new(restaurant_params)
      @restaurant.save
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end

    end

    def edit
      @restaurant = Restaurant.find(params[:id])
    end

    def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    end

    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      redirect_to restaurant_path
    end

    private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

    def find_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

end
# RestaurantsController
#   GET index
#     assigns all restaurants as @restaurants (FAILED - 1)
#   GET show
#     assigns the requested restaurant as @restaurant (FAILED - 2)
#   GET new
#     assigns a new restaurant as @restaurant (FAILED - 3)
#   POST create
#     with valid params
#       creates a new Restaurant (FAILED - 4)
#       assigns a newly created restaurant as @restaurant (FAILED - 5)
#       redirects to the created restaurant (FAILED - 6)
#     with invalid params
#       assigns a newly created but unsaved restaurant as @restaurant (FAILED - 7)
#       re-renders the 'new' template (FAILED - 8)