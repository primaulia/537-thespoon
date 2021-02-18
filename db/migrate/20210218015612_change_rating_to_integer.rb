class ChangeRatingToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :rating, :integer
  end
end
