class Test
	def initialize(w, h)
		@width, @height = w, h
	end

	def chieurong
		@width
	end

	def chieucao
		@height
	end

end

if __FILE__ == $0
	vidu = Test.new(30, 10)

	x = vidu.chieurong
	y = vidu.chieucao

	puts "Chieu rong = #{x}"
	puts "Chieu dai = #{y}"
end