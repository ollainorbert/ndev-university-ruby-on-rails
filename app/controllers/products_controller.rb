class ProductsController < ApplicationController
  # ONLY ADMIN
  def new
  end
  
  def create
    render plain: params[:product].inspect
  end
  # ONLY ADMIN END
  
  def index
    @products = Product.all
  end
end
