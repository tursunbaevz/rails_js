class OrderProductsController < ApplicationController
	def index
		@order_products = OrderProduct.all
		@order_product = OrderProduct.new

	end

	def create
		@order_product = OrderProduct.new(product_id: params[:product_id])
		@order_product.save
		redirect_to products_path	
	end

	def order_products_params
		params.require(:order_product).permit(:quantity, :product_id, :order_id, clients_attributes: [:id, :quantity] )

	end
end