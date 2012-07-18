class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      redirect_to new_order_path, notice: t('notices.success_order')
    else
      render "new"
    end
  end
end