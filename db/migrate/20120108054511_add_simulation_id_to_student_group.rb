class AddSimulationIdToStudentGroup < ActiveRecord::Migration
  def change
    add_column :student_groups, :simulation_id, :integer
  end
end
