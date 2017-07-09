class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  helper_method :get_cost
  def index
  	@products = Product.all
  end

  def test
  	debug
  end

   def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def update
    if @product.update(product_params)
      redirect_to root_path, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @product = Product.new
    @order_products = @product.order_products.build 
  end


  def edit
    @order_products = @product.order_products
  end

  def destroy
  	@product.destroy
  	redirect_to products_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
 	 params.require(:product).permit(:title, :price, order_products_attributes: [:id, :quantity] )
  end
end



