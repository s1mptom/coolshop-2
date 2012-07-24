class OrderProductsController < ApplicationController
  def index
    session[:products] = {} unless session[:products]
    @products = Product.where(id: session[:products].keys)
  end
end