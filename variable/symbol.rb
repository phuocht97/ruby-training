status = :pending
puts status.class
puts :pending.class

puts status == 'pending'
#So sánh biến status với String thì thấy khác nhau

status_1 = "pending"
status_2 = "pending"
puts status_1 == status_2
puts status_1 === status_2
#So sánh dữ liệu giữa 2 chuỗi ở 2 biến khác nhau