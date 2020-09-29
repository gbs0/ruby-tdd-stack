class Category
  attr_reader :name
  attr_accessor :subcategories
  
  def initialize(name)
  	@name = name
  	@subcategories = []
  end

  def add_subcategories(*subcategories)
   @subcategories << subcategories
  end

  def get_subcategories
    @subcategories.flatten
  end
  # def contain_products(*products)
  #   @products
  # end
end 