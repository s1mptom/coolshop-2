class OrderProductsController < ApplicationController
  def index
    session[:products] = {} unless session[:products]
    @items = Product.where(id: session[:products].keys)
  end
end