require_relative "category"

class Subcategory < Category
  attr_reader :name
  
  def initialize(name)
  	@name = name
  end
end