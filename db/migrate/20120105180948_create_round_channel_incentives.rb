class CreateRoundChannelIncentives < ActiveRecord::Migration
  def change
    create_table :round_channel_incentives do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :channel_incentive_id

      t.timestamps
    end
  end
end
