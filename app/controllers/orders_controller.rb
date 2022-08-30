class OrdersController < ApplicationController

  before_action :order_find_id, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show() end

  def edit() end

  def update
    @order = Order.find(params[:id])
    @order.update
    redirect_to orders_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path(@orders)
  end

  def new
    @roder = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to orders_path(@orders)
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

  def order_find_id
    @order = Order.find(params[:id])
  end
end
