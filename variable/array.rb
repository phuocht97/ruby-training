numbers = [1, 2, 3, 4, 5]
puts numbers.include?(3) #Tìm kiếm giá trị trong mảng Cách 1
puts numbers.include? 6 #Tìm kiếm giá trị trong mảng Cách 2

range_1 = (1..5).to_a
print range_1 ,"\n"
range_2 = (1...5).to_a
puts range_2

hash = {"color" => "Red", "number" => 100, 0 => "Yellow"}
puts "#{hash['color']}"
puts "#{hash['number']}"
puts "#{hash[0]}"