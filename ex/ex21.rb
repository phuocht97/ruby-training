def cong(a, b)
	puts "CỘNG #{a} + #{b}"
	return a + b
end

def tru(a, b)
	puts "TRỪ #{a} - #{b}"
	return a - b
end

def nhan(a, b)
	puts "NHÂN #{a} * #{b}"
	return a * b
end

def chia(a, b)
	puts "CHIA #{a} / #{b}"
	return a / b
end

puts "Làm tý phép tính cho vui"

tuoi = cong(30, 5)
chieucao = tru(78, 4)
cannang = nhan(90, 2)
iq = chia(100, 2)

puts "Tuổi: #{tuoi}, Chiều Cao: #{chieucao}, Cân nặng: #{cannang}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway
puts "Tính phép tính"

what = cong(tuoi, tru(chieucao, nhan(cannang, chia(iq, 2))))


puts "Kết quả sau khi làm phép #{what}."

