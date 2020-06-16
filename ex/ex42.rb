class Animal
end

class Dog < Animal
	def initialize(name)
		@name = name
	end			
end

class Cat < Animal
	def initialize(name)
		@name = name
	end
end

class Person
	def initialize(name)
		@name = name

		@pet = nil
	end

	attr_accessor :pet
end

class Employee < Person
	def initialize(name, salary)
		super(name)
		@salary = salary
	end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")
p rover
p Dog.ancestors
puts '-' *40
satan = Cat.new("Satan")
p satan
p Cat.ancestors
puts '-' *40
mary = Person.new("Mary")
p mary
p Person.ancestors
puts '-' *40
mary.pet = satan
p mary.pet
puts '-' *40

frank = Employee.new("Frank", 120000)
p frank
frank.pet = rover
p rover
puts '-' *40
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()
p flipper
p crouse
p harry
