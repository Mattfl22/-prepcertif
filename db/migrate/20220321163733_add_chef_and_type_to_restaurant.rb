class AddChefAndTypeToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :chef, :string
    add_column :restaurants, :cuisine_type, :string
  end
end
