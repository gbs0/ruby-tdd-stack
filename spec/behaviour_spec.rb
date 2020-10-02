RSpec.describe DeepThought do
  it "prints the answear to the ultimate question" do
    printer = double("printer")
    computer = DeepThought.new(printer)   
  end
end