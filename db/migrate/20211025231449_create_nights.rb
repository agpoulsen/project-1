class CreateNights < ActiveRecord::Migration[5.2]
  def change
    create_table :nights do |t|
      t.text :name
      t.text :description
      t.integer :user_id
      t.date :date
      t.time :time
      
      t.timestamps
    end
  end
end
