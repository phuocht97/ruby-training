class Car
	def initialize(name_car)
		@name_car = name_car
	end

	def get_name
		@name_car
	end
end

callName = Car.new("Lexus")

puts callName.get_name			#Cach 1
puts callName.send :get_name	#Cach 2
