class AddQuantityToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :quantity, :integer, default: 1
  end
end
