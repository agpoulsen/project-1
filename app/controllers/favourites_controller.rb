class FavouritesController < ApplicationController
  before_action :check_for_login

  def index
    @favourites = @current_user.favourites
  end

  def edit
    @favourite = Favourite.find params[:id]
  end

  def update
    favourite = Favourite.find params[:id]
    venue = Venue.find params[:favourite][:venue_ids]
    favourite.venues << venue
    redirect_to favourite_path(favourite)
  end

  def new
    @favourite = @current_user.favourites.new
  end

  def create
    favourite = @current_user.favourites.new user_params
    favourite.save
    redirect_to favourites_path
  end

  def show
    @favourite = Favourite.find params[:id]
  end

  def destroy
    favourite = Favourite.find params[:id]
    favourite.destroy
    redirect_to favourites_path
  end

  def remove
    favourite = Favourite.find params[:favourite_id]
    venue = Venue.find params[:venue_id]
    favourite.venues.delete(venue)
    redirect_to favourite_path(favourite)
  end

  private
  def user_params
    params.require(:favourite).permit(:name)
  end

  def favourite_params
    params.require(:favourite).permit(:venue_id)
  end
end
