the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1 => 'pennies', 2 => 'dimes', 3 => 'quarters']

for i in the_count
	puts "This is count #{i}"
end

fruits.each do |randomFruit|
	puts "A fruit of type: #{randomFruit}"
end

change.each {|randomEach| puts "I got #{randomEach}"}

elements = []

(0..5).each do |j|
	puts "adding #{j} to the list."
	elements.push(j)
end

elements.each {|k| puts "Element was: #{k}"}