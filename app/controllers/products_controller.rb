class ProductsController < ApplicationController

  def index
    @products = Product.paginate(:page => params[:page], per_page: 6)
    @order = Order.new
  end

  def show
    @product = Product.find(params[:id])
  end

end
