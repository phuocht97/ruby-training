mang = [
	{traicay: "xoai", gia: 55},
	{traicay: "cam", gia: 33},
	{traicay: "duahau", gia: 44},
	{traicay: "buoi", gia: 66}
]
puts "\n\nMảng sắp xếp theo tên:"
puts mang.sort_by{|tentraicay| tentraicay[:traicay]}
puts "\n\nMảng sắp xếp theo giá:"
puts mang.sort_by{|giaca| giaca[:gia]}
puts "\n\nNgược lại giá:"
puts mang.sort_by{|giaca| -giaca[:gia]}