class OrdersController < ApplicationController

  def new
    @order = Order.new
    @order.items_from_product_ids session[:products]
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      session[:product_ids] = {}
      redirect_to new_order_path, notice: t('notices.success_order')
    else
      render "new"
    end
  end

  def add_product
    session[:products] = {} unless session[:products]
    if session[:products][params[:product_id].to_i]
      session[:products][params[:product_id].to_i]+= 1
    else
      session[:products][params[:product_id].to_i] = 1
    end
    render json: :ok
  end

end