#yield
class Person
	def initialize (name)
		@name = name
	end

	def do_with_name
		yield(@name)
	end
end

person = Person.new("Oscar")

person.do_with_name do |name|
	puts "Hey, his name is #{name}"
end

def rb_block
	puts "Begin"
	yield
	yield
	puts "End."
end

rb_block {puts "We're in the block"}

#block
reversed_name = ""
puts '-' *40
person.do_with_name do |name|
	reversed_name = name.reverse
end

puts reversed_name