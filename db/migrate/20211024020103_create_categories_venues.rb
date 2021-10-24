class CreateCategoriesVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_venues, :id => false do |t|
      t.integer :category_id
      t.integer :venue_id
    end
  end
end
