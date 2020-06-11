print "Số ký tự muốn nhập = "
n = gets.chomp.to_i
list = [];
for i in 1..n
	print "#{i}. "
	kytu = gets.chomp.to_s
	if kytu.length >= 3
		if i%2 == 0
		#puts kytu[0..2] * "#{i/i+1}".to_i
		list.push(kytu[0..2] * "#{i/i+1}".to_i)
		else
		#puts kytu[0..2] * "#{i/i}".to_i
		list.push(kytu[0..2] * "#{i/i}".to_i)
		end
	else
		if i%2 == 0
		#puts kytu * "#{i/i+1}".to_i
		list.push(kytu * "#{i/i+1}".to_i)
		else
		#puts kytu * "#{i/i}".to_i
		list.push(kytu * "#{i/i}".to_i)
		end
	end
end
puts "\n\n"
puts list
puts "__________________list đã sort(Theo độ dài):"
puts list.sort_by{ |bienbatky| bienbatky.length}
puts "__________________list đã sort(Theo độ dài Ngược Lại):"
puts list.sort_by{ |tenbatky| -tenbatky.length }
