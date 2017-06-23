class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	@product = Product.new
  end

  def test
  	debug
  end

  def create
  	@product = Product.create!(product_params)
  	@product.save
  	redirect_to products_path
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to products_url
  end

  def product_params
 	 params.require(:product).permit(:title, :price, :order_id, :name)
  end
end
