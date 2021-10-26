class CreateNightsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :nights_users do |t|
      t.integer :night_id
      t.integer :user_id
      t.integer :venue_id
    end
  end
end
