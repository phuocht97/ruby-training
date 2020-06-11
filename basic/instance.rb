class Box
	def initialize(w, h)
		@width, @height = w, h
	end

	def dientich
		@width * @height
	end
end

if __FILE__ == $0
	mg = Box.new(5, 20)
	a = mg.dientich()	
	puts "Dien tich = #{a}"
end
