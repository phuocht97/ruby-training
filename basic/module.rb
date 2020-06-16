
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

