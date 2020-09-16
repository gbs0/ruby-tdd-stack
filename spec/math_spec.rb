RSpec.describe "Math Matchers unit" do
	it "Should accept PI float value" do
		expect(Math::PI).to be_within(0.01).of(3.14)
	end
end