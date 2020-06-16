mySymbol = :hello
myString = "hello"


puts mySymbol.object_id

puts myString.object_id

require 'benchmark'
loop_times = 1000000

str = Benchmark.measure do
	loop_times.times do
		"hello" == "hello"
	end
end.total

sym = Benchmark.measure do
	loop_times.times do
		:hello == :hello
	end
end.total

puts "String #{str}"
puts "Symbol #{sym}"