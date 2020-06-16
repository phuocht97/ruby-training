#block
(1..10).each do |i|
	print i
end

print "\n"

(1..10).map{|i| i}

arr = [1,2,3]
arr.collect{|n| puts n*2}
#Procs
puts "=" *40
even = Proc.new{|n| puts n if n % 2 == 0}
	[1,2,3,4,5,6].collect(&even)

	strings = ["1", "2", "3"]
	num = strings.map(&:to_i)
	puts num
def even_proc
	even = Proc.new{return "Even"}
	even.call
	"Odd"
end
	puts even_proc
#Lambda
puts "=" *40
strings1 = ["May", "June", "July"]
	symbols = strings1.collect(&lambda{|m| m.to_sym})
	puts symbols
	print "\n\n"
def even_lambda
	even = lambda {return "Even"}
	even.call
	"Odd"
end
	puts even_lambda
