RSpec.describe "Math Matchers unit" do
	it "Should equals to PI value" do
	  expect(Math::PI).to eq(3.14) # executa Math::PI == 3.14
	end
	
	it "Should accept PI float value" do
		expect(Math::PI).to be_within(0.01).of(3.14)
	end
end