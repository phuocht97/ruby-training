class TestAttr
	attr_accessor :bien
	def initialize(words)
		@bien = words
	end

	def Output
		puts @bien
	end
end

c = TestAttr.new("aaa")
puts c.Output