class AddChefNameToRestaurants < ActiveRecord::Migration[6.0]
  def change
    # add_column :<table>, :<col_name>, :<type>
    add_column :restaurants, :chef_name, :string
  end
end
