RSpec.describe "Range Matchers Example" do
	it "Should some intervals range value" do
		range = (1..10)

		expect(range).to cover(1)
		expect(range).to cover(10)
		expect(range).to cover(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
		expect(range).to cover(5, 6, 7, 8)
	end
end