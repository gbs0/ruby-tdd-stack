class Category
  attr_reader :subcategories, :name

  def initialize(name)
  	@name = name
  	@subcategories = []
  end

  def add_subcategories(*subcategories)
  end
end 