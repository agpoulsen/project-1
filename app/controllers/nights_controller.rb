class NightsController < ApplicationController
  before_action :check_for_login

  def index
    @nights = @current_user.nights
  end

  def show
    @night = Night.find params[:id]
    @users = @night.users
  end

end
