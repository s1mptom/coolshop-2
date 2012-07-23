class OrderProductsController < ApplicationController
  def index
    @order = Order.new
    @order.items_from_product_ids session[:product_ids]
    @items = [] until @items
  end
end
