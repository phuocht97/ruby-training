class A
	def zzz
		return 5 + 5
	end
end

class B < A
	def zzz
		a = super
		return a
	end
end

b_call = B.new
puts b_call.zzz