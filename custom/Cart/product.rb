class Product
	attr_reader :name

	def initialize(name)
		if name.nil?
			@name = "Unkown Product"
		end
		@name = name
	end
end 