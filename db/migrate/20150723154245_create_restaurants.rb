class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :description

      t.timestamps null: false
    end
  end
end
