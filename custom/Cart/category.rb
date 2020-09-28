class Category
  attr_reader :name
  attr_accessor :products, :subcategories
  
  def initialize(name)
  	@name = name
  	@products = []
  	@subcategories = []
  end

  def add_products(*products)
  end

  def add_subcategories(*subcategories)
  end

  def contain_products(*products)
  end
end 