class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    @order = Order.new(order_params)
    @order.save!
    render json: @order
  end

  def edit
    @order = Order.find(params[:id])
    @order.update(order_params)
    render json: @order
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  def display_products
    @products = Communicator.products
    render json: @products
  end

  private

  def order_params
    params.require(:order).permit(:user_name, :user_id, :product_id, :price)
  end

end
