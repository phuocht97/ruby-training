module MyStuff
	def MyStuff.apple()
		puts "I'm Apples!"
	end

	def self.hello
		puts "Hello, My name's Phuoc"
	end

	TANGERIN = "Living refelection of a dream"
end

class Some
	def test_say
		puts "I'm Bananas!"
	end

	def self.say
		puts "I'm Minions"
	end


	def initialize
		@randomFruit = "and now a thousand years between"
	end

	attr_reader :Fruit
	def orange
		@Fruit = @randomFruit
		puts "I'm Classy Oranges #{@Fruit}"
	end
end

class Book
	attr_accessor :title, :pages
end

b1 = Book.new
MyStuff.hello
b1.title = "Hidden motives"
b1.pages = 225
p "The book #{b1.title} has #{b1.pages} pages"
puts '-' *40
b2 = Some.new
b2.test_say
Some.say
b2.orange