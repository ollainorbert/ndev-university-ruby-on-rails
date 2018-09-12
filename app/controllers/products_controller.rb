class ProductsController < ApplicationController
  # ONLY ADMIN
  def new
	@product = Product.new
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:name, :price, :quantity))
	if @product.save
	  redirect_to @product
	else 
	  render 'new'
	end
  end
  # ONLY ADMIN END
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
end