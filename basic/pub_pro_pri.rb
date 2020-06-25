#classPublic
class User
	def hi 
		puts "hi"
	end
end
puts "Public Method"
u_pub = User.new
puts u_pub.hi
puts '-' *40
#classPrivate
class User1
	def hi
		puts "Hi"
	end

	def hello
		puts "Hello"
	end

	private

	def secret
		puts "secret"
	end

	def internal
		puts "internal"
	end
end
puts "Private Method"
u1_pub = User1.new
u1_pub.hi
u1_pub.hello
#u1_pub.secret # => private method
#u1_pub.internal # => private method


class MethodPrivate
	def Pri1
		puts "Private 1"
	end

	def Pri2
		puts "Private 2"
	end

	def Pri3
		puts "Private 3"
	end

	private :Pri2, :Pri3
end

mt_pri = MethodPrivate.new
mt_pri.private_methods
#Call Method in function Private
class CallMethodPrivate
	def method_pri1
		puts "hi, Method #{method_secret}"
	end

	def method_pri2
		self.method_secret
	end

	def method_pri3
		method_secret
	end

	private

	def method_secret
		puts "secret"
	end
end

new_call = CallMethodPrivate.new
puts "Method 1"
new_call.method_pri1
#new_call.method_pri2 #error do có self
puts "Method 3"
new_call.method_pri3
puts '-' *40
#class Protected
class UserProtect
	def secret
		puts "secret"
	end

	protected :secret
end

class User1Protect

	def call_by_self
		self.secret
	end

	def call_not_self
		secret
	end

	protected

	def secret
		puts "secret"
	end

end

class UserInitPro
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def ==(other_user)
		self.secret_initialize == other_user.secret_initialize
	end

	protected

	def secret_initialize
		puts "#{name} - length :#{name.length}"
	end
end
puts "Protect Method"
u_pro = UserProtect.new
u1_pro = User1Protect.new
#u_pro.secret # Protected nên ko gọi dc
#u1_pro.secret # Protected nên ko gọi dc
u1_pro.call_by_self
u1_pro.call_not_self
john = UserInitPro.new("John")
bob = UserInitPro.new("Bob")
puts bob == john
puts '-' *40






