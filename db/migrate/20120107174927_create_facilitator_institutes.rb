class CreateFacilitatorInstitutes < ActiveRecord::Migration
  def change
    create_table :facilitator_institutes do |t|
      t.integer :facilitator_id
      t.integer :institute_id

      t.timestamps
    end
  end
end
