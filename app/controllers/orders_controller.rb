class OrdersController < ApplicationController

def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
  end

private

  def order_params
    params.require(:order).permit(:name, :option, :number_of_boxes, :address, :telephone_number, :email, :dietary_requirements)
  end
end
