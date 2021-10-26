class AddUserIdToFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :favourites, :user_id, :integer
  end
end
