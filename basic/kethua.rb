class Animal
	def speak
		puts "Hi"
	end
end

class Cat < Animal
	def speak
		puts "Meow"
	end
end

c = Cat.new
c.speak
p Cat.ancestors
