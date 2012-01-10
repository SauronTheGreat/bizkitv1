class CreatePackagings < ActiveRecord::Migration
  def change
    create_table :packagings do |t|
      t.string :name

      t.timestamps
    end
  end
end
