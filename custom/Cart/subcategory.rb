require_relative "product"

class Subcategory
  attr_reader :name
  
  def initialize(name)
  	@name = name
  	@product
  end

  def add_product(product_name)
    @product = product_name
  end

  def product
  	@product
  end 
end