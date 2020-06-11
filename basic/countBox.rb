class Box
	@@count = 0
	def initialize(w, h)
		@width, @height = w, h

		@@count += 1
	end

	def self.tinhtong()
		puts"Tong Box = #@@count"
	end
end

box1 = Box.new(10, 20)
box2 = Box.new(30, 100)
box3 = Box.new(50, 10)
box4 = Box.new(22, 32)

Box.tinhtong()
