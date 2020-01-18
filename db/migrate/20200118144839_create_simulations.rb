class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
      t.string :ask_month
      t.string :ask_vege
      t.boolean :answer

      t.timestamps
    end
  end
end
