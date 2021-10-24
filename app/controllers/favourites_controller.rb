class FavouritesController < ApplicationController

  def index
    @favourites = @current_user.favourites
  end

  def edit
    @favourite = @current_user.favourites
  end

end
