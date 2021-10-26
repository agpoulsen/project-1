class RemoveUserIdFromFavourites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favourites, :user_id, :integer
  end
end
