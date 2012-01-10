class AddInstituteIdToImport < ActiveRecord::Migration
  def change
    add_column :imports, :institute_id, :integer
    add_column :users, :institute_id, :integer
  end
end
