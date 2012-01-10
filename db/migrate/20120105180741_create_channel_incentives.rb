class CreateChannelIncentives < ActiveRecord::Migration
  def change
    create_table :channel_incentives do |t|
      t.string :name

      t.timestamps
    end
  end
end
