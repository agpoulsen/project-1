class RemoveUserIdFromNights < ActiveRecord::Migration[5.2]
  def change
    remove_column :nights, :user_id, :integer
  end
end
