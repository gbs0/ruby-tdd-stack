RSpec.describe "Exception Matchers unit" do
  it "Expect a raise error with RuntimeError" do
  	expect { raise RuntimeError }.to raise_error(RuntimeError)
  end

  it "Expect a raise error with NoMethodError" do
  	expect { raise NoMethodError }.to raise_error(NoMethodError)
  end

  it "Expect a raise error with StandardError" do
  	expect { raise StandardError }.to raise_error(StandardError)
  end

  it "Expect a raise error with ArgumentError" do
  	expect { raise ArgumentError }.to raise_error(ArgumentError)
  end

  it "Expect a raise error with NameError" do
  	expect { raise NameError }.to raise_error(NameError)
  end

end