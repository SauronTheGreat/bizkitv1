class AddCostPriceToStartUpDecision < ActiveRecord::Migration
  def change
    add_column :start_up_decisions, :cost_price, :float
  end
end
