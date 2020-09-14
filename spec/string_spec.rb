RSpec.describe "String Matchers Examples" do
	string = "gabriel schiavo"
	
	it "Should match with regex" do 
		expect(string).to match(/gabriel/)
		expect(string).to match(/chiav/)
	end

	it "Should NOT match with regex" do
		expect(string).not_to match(/silva/)
		expect(string).not_to match(/rafael/)
	end

	it "Should include some predefined strings or letters" do
		expect(string).to include("g")
		expect(string).to include("gabriel")
		expect(string).to include("gab", "sch")
	end

	it "Should NOT include some predefined strings" do
		expect(string).not_to include("silva")
		expect(string).not_to include("gabs")
	end

	it "Should star"
	# start_with (Head) 
		expect(string).to start_with("gabriel")
		expect(string).not_to start_with("schiavo")

	# end_with (Tail)
	expect(string).to end_with("schiavo")
	expect(string).not_to end_with("gabriel")

end