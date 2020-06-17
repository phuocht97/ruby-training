class Some
	def method1
		puts "Method 1"
		self.method2
	end

	def method2
		puts "Method 2"
	end

	def method3
		puts "Method 3"
		method1
		self.method1
	end
end

val = Some.new

val.method1
val.method2
val.method3

