class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.references :product
      t.references :order

      t.timestamps
    end
  end
end
