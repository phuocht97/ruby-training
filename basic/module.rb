
module FirstModule
	def hello
		puts "Xin Chao"
	end
end


class Random
	include FirstModule
end

Random.new.hello


module SecondModule
	def hi
		puts "Hi, Chao Phuoc"
	end
end


class Level2
	extend SecondModule
end

Level2.hi

module MathTest
	def initialize(math, physical)
		@math = math.to_f
		@physical = physical.to_f
	end
end
class Help
	include MathTest
	def Tinh
		average = (@math + @physical)/2
		puts average
	end	
end

math_test = Help.new(9, 8)
puts math_test.Tinh

