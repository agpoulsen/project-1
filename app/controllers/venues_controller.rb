class VenuesController < ApplicationController
  before_action :check_for_login

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find params[:id]
    @venue_json_object = @venue.return_google_spot(@venue.name, @venue.location)
  end

  def new
    @venue = Venue.new
  end

  def create
    venue = Venue.new venue_params
    venue.save
    redirect_to venue_path(venue)
  end

  def edit

  end

  private

  def venue_params
    params.require(:venue).permit(:name, :location, :image, :type)
  end
end
