class Venue < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true
  has_and_belongs_to_many :favourites

  # Connects to Google Places and queries the Google Places database using the Venue name and location. Returns the 'json_result_object' containing venue information. 
  def return_google_spot name, location
    api_key = Rails.application.secrets.google_api_key
    @client = GooglePlaces::Client.new(api_key)
    @venue_object = @client.spots_by_query("#{ name } near #{ location }")
    object = @venue_object[0]['json_result_object']
  end

end
