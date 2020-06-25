$global_variable = "Toi chua duoc thay doi."
def variable_scope
	puts $global_variable = "Toi da bi thay doi."
end
variable_scope 
puts $global_variable
#Sau khi thay doi bien trong function thi bien da bi thay doi

class Test
	attr_accessor :name
	local_var = "Local Variable"
	@instance_var = "Instance Variable"
	def initialize(name)
		age = name
		@age1 = name
	end
	def CallVar
		#puts "Name : #{age}" ko Call dc bien Local
		puts "Name @: #{@age1}"
		local_var = "Local Called Variable"
		puts local_var
		@instance_var = "Instance Called Variable"
		puts @instance_var
	end	
end

test_var = Test.new("aaaa")
puts test_var.CallVar