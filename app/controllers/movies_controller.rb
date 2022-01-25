class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy,]

  def index
    @movie = movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit; end

  def create
    @movie = Movie.new(resaurant_params)

    if @movie.save
      redirected_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def update
    if @movie.update(restaurant_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to restaurant_url, notice: 'Movie was successfully deleted.'
  end

  # private

  def set_restaurant
    @movie = Movie.find(params[:id])
  end

  def restaurant_params
    params.require(:movie).permit(:name, :address, :phone_number, :category)
  end
end
