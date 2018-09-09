class ProductsController < ApplicationController
  # ONLY ADMIN
  def new
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:name, :price, :quantity))
	@product.save
	redirect_to @product
  end
  # ONLY ADMIN END
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
end
