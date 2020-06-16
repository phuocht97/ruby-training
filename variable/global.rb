$global_variable = "Toi chua duoc thay doi."
def variable_scope
	puts $global_variable = "Toi da bi thay doi."
end
variable_scope 
puts $global_variable
#Sau khi thay doi bien trong function thi bien da bi thay doi