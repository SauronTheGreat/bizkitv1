class CreateStudentGroups < ActiveRecord::Migration
  def change
    create_table :student_groups do |t|
      t.string :name
      t.integer :institute_id

      t.timestamps
    end
  end
end
