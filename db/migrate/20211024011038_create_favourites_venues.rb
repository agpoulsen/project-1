class CreateFavouritesVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites_venues, :id => false do |t|
      t.integer :favourite_id
      t.integer :venue_id
    end
  end
end
