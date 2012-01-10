class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users,:username,:string
    add_column :users,:first_name,:string
    add_column :users,:last_name,:string
    add_column :users,:superadmin,:boolean
    add_column :users,:admin,:boolean
    add_column :users,:student,:boolean
    add_column :users,:facilitator,:boolean

  end
end
