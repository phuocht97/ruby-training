#Bài 01: Kiểm tra định dạng của thẻ cào điện thoại.
#Hãy viết chuỗi Regex kiểm tra định dạng của thẻ cào điện thoại với cấu trúc như sau: xxxx-xxxx-xxxx-xxxx, trong đó x là các số từ [0-9]

		(\d{4})-(\d{4})-(\d{4})-(\d{4})

#Bài 02: Kiểm tra định dạng ngày tháng năm.
#Hãy kiểm tra một chuỗi có đúng định dạng ngày tháng năm hay không dd/mm/yyyy. 
#Lưu ý là đối với ngày thì có thể từ 1 -> 31.

		((0[1-9])*([1-2][0-9])*(31)*)(\/(0[1-9])*(10|11|12)*\/)(\d+)

#Bài 03: Kiểm tra tên đăng nhập của người dùng có đúng định dạng hay không.
#Hãy kiểm tra tên đăng nhập với yêu cầu:

#Chữ đầu tiên không phải là số
#Chiều dài trong khoảng từ 4 -> 12 ký tự
#Chỉ chấp nhận các chữ số từ 0-9, chữ cái thường, 
#chữ cái hoa và dấu gạch dưới (_)

		^([a-z|A-Z]([0-9|a-z|_|A-Z]{3,11}))
#Bài 04: Kiểm tra định dạng mật khẩu khi đăng ký.
#Hãy kiểm tra mật khẩu của người dùng khi đăng ký vì như vậy sẽ an toàn hơn. 
#Yêu cầu: Mật khẩu ít nhất 8 ký tự
#Phải có chữ hoa, chữ thường, số và 1 ký tự đặc biệt

		"^([A-Za-z!@#$%^&*()_+\\\|\/?.>,<;:'\[\]\}\{]+[A-Z|a-z|0-9|[!@#$%^&*()_+\\\|\/?.>,<;:'\[\]\}\{]]{8,})"
#Bài 05: Kiểm tra định dạng của email
#Hãy kiểm tra email người dùng nhập vào 
#có đúng hay không? Chỉ cần làm đơn giản ko phức tạp

		^([a-zA-Z\d+]+@+[a-z]+(\.+[a-z]*))

#Bài 06: Kiểm tra định dạng URL
#Hãy kiểm tra chuỗi URL người dùng nhập vào có đúng hay không.
		
		"^([https:\/\/|www|[a-z|A-Z|0-9]]+[www|a-z]\.[a-z|A-Z|0-9]+[\.a-z][a-z|\/]+([\/!@#$%^&*()+-?_][a-zA-Z0-9\/]+[\/!@#$%^&*()+-?_]+[a-zA-Z0-9\/]+)*)"

		^([https:\/\/|www|[a-z|A-Z|0-9]]+[www|a-z\.][a-z|A-Z|0-9]+[\.a-z][a-z|\/]+([\/!@#$%^&*()+-?_.][a-zA-Z0-9\/]+[\/!@#$%^&*()+-?_.]+[a-zA-Z0-9\/.]+)*)