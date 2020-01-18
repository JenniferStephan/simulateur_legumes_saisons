class ChangeVegetables < ActiveRecord::Migration[5.2]
  def change
    add_column :vegetables, :valid_season, :boolean
  end
end
