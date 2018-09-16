require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  @product = Product.new

  def setup()
	@product = getValidProduct()
  end

  test "should not save product without name" do
	@product.name = ''
    assert_not @product.save
  end
  
  test "should not save product short name" do
	@product.name = 'qwe'
    assert_not @product.save
  end
  
  test "should not save product with text in price property" do
	@product.price = 'qwe'
    assert_not @product.save
  end
  
  test "should not save product with negative value in price property" do
	@product.price = -1
    assert_not @product.save
  end
  
  test "should not save product with text in quantity property" do
	@product.quantity = 'qwe'
    assert_not @product.save
  end
  
  test "should not save product with negative value in quantity property" do
	@product.quantity = -1
    assert_not @product.save
  end
  
  test "should save a valid product" do
    assert @product.save
  end
  
  private def getValidProduct()
	product = Product.new
	product.name = 'aValidProduct'
	product.price = 5
	product.quantity = 5
	return product
  end
end
