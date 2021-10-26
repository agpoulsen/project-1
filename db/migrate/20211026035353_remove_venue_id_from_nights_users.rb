class RemoveVenueIdFromNightsUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :nights_users, :venue_id, :integer
  end
end
