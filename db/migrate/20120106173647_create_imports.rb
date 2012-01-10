class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.integer :user_id
      t.string :excel_file_name

      t.timestamps
    end
  end
end
