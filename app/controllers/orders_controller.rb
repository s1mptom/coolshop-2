class OrdersController < ApplicationController

  def new
    @order = Order.new
    @order.items_from_product_ids session[:product_ids]
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      session[:product_ids] = []
      redirect_to new_order_path, notice: t('notices.success_order')
    else
      render "new"
    end
  end

  def add_product
    session[:product_ids] = [] unless session[:product_ids]
    session[:product_ids] << params[:product_id].to_i if params[:product_id]
    render json: :ok
  end

end