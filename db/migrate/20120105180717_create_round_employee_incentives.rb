class CreateRoundEmployeeIncentives < ActiveRecord::Migration
  def change
    create_table :round_employee_incentives do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :employee_incentive_id

      t.timestamps
    end
  end
end
