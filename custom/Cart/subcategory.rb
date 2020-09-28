require_relative "product"

class Subcategory
  attr_reader :name
  
  def initialize(name)
  	@name = name
  	@products = []
  end

  def add_product(product)
    obj = Product.new(product)
    @products << obj
  end
end