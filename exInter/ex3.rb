#Write a Ruby program to create a new string which is n 
#copies of a given string where n is a non-negative interger
print "Nhập k = "
k = gets.chomp.to_i
for i in 1..k
	n = "a"*i
	puts "#{n}"
end