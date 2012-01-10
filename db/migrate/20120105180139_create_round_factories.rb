class CreateRoundFactories < ActiveRecord::Migration
  def change
    create_table :round_factories do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :size_id
      t.integer :quantity

      t.timestamps
    end
  end
end
