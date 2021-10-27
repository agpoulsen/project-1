class VenuesController < ApplicationController
  before_action :check_for_login

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find params[:id]

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
  def return_google_spot
    api_key = Rails.application.secrets.google_api_key
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :image, :type)
  end
end
