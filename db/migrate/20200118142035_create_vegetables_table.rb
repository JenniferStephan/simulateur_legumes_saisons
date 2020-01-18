class CreateVegetablesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :vegetables do |t|
      t.string 'label'
      t.string 'months', array: true

      t.timestamps
    end
  end
end
