class CreateEmployeeIncentives < ActiveRecord::Migration
  def change
    create_table :employee_incentives do |t|
      t.string :name

      t.timestamps
    end
  end
end
