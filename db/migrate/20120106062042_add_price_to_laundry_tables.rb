class AddPriceToLaundryTables < ActiveRecord::Migration
  def change
    add_column :tastes,:price,:float
    add_column :types,:price,:float
    add_column :toppings,:price,:float
    add_column :packagings,:price,:float


  end
end
