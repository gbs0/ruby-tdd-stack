RSpec.describe "Exception Matchers unit" do
  it "Expect a raise error with RuntimeError" do
  	expect { raise RuntimeError }.to raise_error(RuntimeError)
  end

  it "Expect a raise error with NoMethodError" do
  	expect { raise NoMethodError }.to raise_error(NoMethodError)
  end

  it "Expect a raise error with RuntimeError" do
  	expect { raise RuntimeError }.to raise_error(RuntimeError)
  end

end