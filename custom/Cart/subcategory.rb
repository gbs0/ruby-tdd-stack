class Subcategory
  attr_reader :name
  
  def initialize(name)
  	@name = name
  	@products = []
  end

  def add_product(product)
    @products << product
  end
end