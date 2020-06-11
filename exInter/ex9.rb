print "Tổng số trong list "
n = gets.chomp.to_i
list = []
for i in 1..n
	print "Số thứ #{i} = "
	chuso = gets.chomp.to_i.abs
	list.push(chuso)
end
puts "\n\n"
puts list
puts "\nMảng đã sắp xếp sau khi lấy giá trị dương"
puts list.sort_by{ |so| so}
puts "\nSắp xếp ngược lại"
puts list.sort_by{ |so| -so}
puts "\nGiá trị lớn nhất"
puts list.max
puts "\nGiá trị nhỏ nhất"
puts list.min