#Attribute Accessor
class Book
	attr_reader :title, :author
	def initialize(title, author)
		@title = title
		@author = author
	end
end

book1 = Book.new("Survival", "Ed Stafford")
book2 = Book.new("Skills", "Bear Grylls")

puts book1.title
puts book2.author
#Class Method
class Food
	def self.cook
		puts "Cook"
	end
end

Food.cook
#Practice
class Cat
	def self.meow
		print "I'm a cat, gimme food & pet me now!\n"
	end
end
#Cách 1
3.times do
	Cat.meow
end
#Cách 2
3.times { Cat.meow }