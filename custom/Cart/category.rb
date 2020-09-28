class Category
  attr_reader :name
  attr_accessor :products
  
  def initialize(name)
  	@name = name
  	@products = []
  end

  def add_products(*products)
  end
end 