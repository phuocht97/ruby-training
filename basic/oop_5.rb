class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def description
		puts "Name : #{name} \nAge: #{age}"
	end
end

class Child < Person
	attr_accessor :favorite
	def initialize(name, age, favorite)
		super(name, age)
		@favorite = favorite
	end
end

class Morther < Person
	attr_accessor :color, :food
	def initialize(name, age, color, food)
		super(name, age)
		@color = color
		@food = food
	end
end

p = Child.new("Aliken", 18, "Football")
puts p.description

pa = Morther.new("Joe", 38, "Red", "dsaasd")
puts pa.description

[p, pa].each(&:description)

