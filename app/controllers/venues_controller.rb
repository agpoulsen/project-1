class VenuesController < ApplicationController
  before_action :check_for_login

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    
  end

end
