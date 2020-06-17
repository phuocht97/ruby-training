class Rectangle
	
	def initialize
		@width = 3
		@length = 5
	end

	def set_width(width)
		@width = width
	end

	def area
		@length * @width
	end

end

s = Rectangle.new

puts "Result before set_width: " + s.area.to_s

s.set_width(4)
puts "Result after set_width: " + s.area.to_s