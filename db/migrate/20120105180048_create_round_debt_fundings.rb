class CreateRoundDebtFundings < ActiveRecord::Migration
  def change
    create_table :round_debt_fundings do |t|
      t.integer :round_id
      t.integer :player_id
      t.float :borrowing_value

      t.timestamps
    end
  end
end
