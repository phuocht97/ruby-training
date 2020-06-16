allthings = "aas bdf cfsdaf fasdf sadas dasdasd sad"
addingThings = ["Oranges", "Mango", "Lemon", "Apple"]
stuff = allthings.split(' ')
puts allthings

while stuff.length != 10
	splitThings = addingThings.pop
	puts "Adding: #{splitThings}"
	stuff.push(splitThings)
	puts "allthings.length = #{stuff.length}"
end

print stuff , "\n"