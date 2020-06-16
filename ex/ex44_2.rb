class Parent

	def picked()
		puts "PARENT method"
	end
end

class Child < Parent
	def picked()
		puts "CHILD method BEFORE"
		super()
		puts "CHILD method AFTER"
	end
end

dad = Parent.new()
son = Child.new()

dad.picked()
son.picked()