class Nguoi
	def initialize(ten)
		@ten = ten
	end

	def show
		puts @ten
	end
end

first = Nguoi.new("Nguyen")
first.show
second = Nguoi.new("Huynh")
second.show
#thong wa function "initialize(ten)" truyen tham so
#thong wa function show de hien "Tham so" truyen vao