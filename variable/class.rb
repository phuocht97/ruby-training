class Dog
	def initialize(leg)
		@@leg = leg
	end

	def show_leg
		puts @@leg
	end

end

first = Dog.new(4)
first.show_leg

second = Dog.new(10)
second.show_leg

first.show_leg 
#Bị thay đổi do biến second đã thay đổi biến @@leg trong class
