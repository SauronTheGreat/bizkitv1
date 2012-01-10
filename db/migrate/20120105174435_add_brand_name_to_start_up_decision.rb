class AddBrandNameToStartUpDecision < ActiveRecord::Migration
  def change
    add_column :start_up_decisions, :brand_name, :string
  end
end
