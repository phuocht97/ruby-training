class Parent
	def picked()
		puts "PARENT method"
	end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.picked()
son.picked()