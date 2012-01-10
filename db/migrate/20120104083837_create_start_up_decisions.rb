class CreateStartUpDecisions < ActiveRecord::Migration
  def change
    create_table :start_up_decisions do |t|
      t.integer :player_id
      t.integer :simulation_id
      t.integer :taste_id
      t.integer :type_id
      t.integer :topping_id
      t.integer :packaging_id

      t.timestamps
    end
  end
end
