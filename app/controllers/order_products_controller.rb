class OrderProductsController < ApplicationController
  def index
    @order = Order.new
    @products = Product.where(id: session[:products].keys)
  end
end
