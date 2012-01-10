class CreateRoundMarkets < ActiveRecord::Migration
  def change
    create_table :round_markets do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :market_id

      t.timestamps
    end
  end
end
