require_relative "cart_spec"
require_relative "subcategory"
require_relative "category"

RSpec.describe Category do
  it "Contains all the products of its subcategories" do
  	eletronics = Category.new("eletronics")
  	computers = Subcategory.new("computers")
  	smartphones = Subcategory.new("smartphones")

  	computers.add_products("Macbook")
  	smartphones.add_products("iPhone")

  	eletronics.add_subcategories(computers, smartphones)

  	eletronic_products = eletronics.subcategories.flat_map(&:products)

  	# Método que verifica se contém produtos
  	expect(eletronic_products).to contain_products("Macbook", "iPhone") # E evita falha por conter um array vazio no inicio
  end
end