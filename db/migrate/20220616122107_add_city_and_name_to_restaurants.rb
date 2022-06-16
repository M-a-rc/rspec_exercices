class AddCityAndNameToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :city, :string
    add_column :restaurants, :name, :string
  end
end
