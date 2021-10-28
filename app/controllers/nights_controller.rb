class NightsController < ApplicationController
  before_action :check_for_login

  def index
    @nights = @current_user.nights
  end

  def show
    @night = Night.find params[:id]
    @users = @night.users
    @venues = list_venues @users
  end

  def edit
    @night = Night.find params[:id]
  end

  def new
    @night = @current_user.nights.new
  end

  def create
    night = @current_user.nights.new night_params
    night.save
    @current_user.nights << night
    redirect_to night_path(night)
  end

  def update
    night = Night.find params[:id]
    user = User.find params[:night][:user_ids]
    night.users << user
    redirect_to night_path(night)
  end

  def destroy
    night = Night.find params[:id]
    night.destroy
    redirect_to nights_path
  end

  def remove
    night = Night.find params[:night_id]
    user = User.find params[:user_id]
    night.users.delete(user)
    redirect_to night_path(night)
  end

  private
  def night_params
    params.require(:night).permit(:name, :description, :date, :time)
  end

  # Iterates through each user's favourites and pushes the venue object to an array as long as that venue object isn't already in the array - prevents duplicate venues in the Night Out suggestions
  def list_venues users
    venues = []
    users.each do |u|
      u.favourites.each do |f|
        f.venues.each do |v|
          venues << v unless venues.include? v
        end
      end
    end
    return venues
  end

end
