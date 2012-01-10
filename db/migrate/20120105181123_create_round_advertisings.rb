class CreateRoundAdvertisings < ActiveRecord::Migration
  def change
    create_table :round_advertisings do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :advertising_id
      t.integer :size_id

      t.timestamps
    end
  end
end
