class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :stars
      t.string :address

      t.timestamps
    end
  end
end
