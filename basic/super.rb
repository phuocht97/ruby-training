class Cat
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

class YellowCat < Cat
	def initialize(name)
		super
	end
end

ycat = YellowCat.new('Mèo vàng')
puts "Con #{ycat.name}"

class Cat_1
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

class GreenCat < Cat_1
	attr_accessor :role
	def initialize(name, age, role)
		super(name, age)
		@role = role
	end
end

gcat = GreenCat.new('Mèo xanh', 20, 'John')
puts "\nCon #{gcat.name} 
#{gcat.age} tháng tuổi
#{gcat.role} là chủ của mèo"
