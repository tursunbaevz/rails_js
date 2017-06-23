class OrdersController < ApplicationController
  def index
 	@orders = Order.all
 	@order = Order.new
  end

  def create
  	@order = Order.create!(order_params)
  	@order.save
  	redirect_to orders_path
  end

  def destroy
  	@order = Order.find(params[:id])
  	@order.destroy
  	redirect_to orders_url
  end

  def order_params
  	params.require(:order).permit(:client_id, :product_id, :quantity)
  end

end
