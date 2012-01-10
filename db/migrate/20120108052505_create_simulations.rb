class CreateSimulations < ActiveRecord::Migration
  def change
    create_table :simulations do |t|
      t.string :name
      t.integer :max_rounds

      t.timestamps
    end
  end
end
