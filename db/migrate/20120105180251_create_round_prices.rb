class CreateRoundPrices < ActiveRecord::Migration
  def change
    create_table :round_prices do |t|
      t.integer :round_id
      t.integer :player_id
      t.float :price

      t.timestamps
    end
  end
end
