#Vi du ve Proc
random = Proc.new {|x| puts x + 1}
[1, 2, 3].each(&random)
print "n = "
n = gets.chomp.to_i
print "Result Proc = "
random.call(n)
#Lambda
result = lambda {|x| x * 2}
print "Result Lambda = "
print result.call(n)

functionResult = lambda do |n|
	if n > 30
		return puts "\nn - 30 -> n = #{n - 30}"
	elsif n < 30
		return puts "\nn + 30 -> n = #{n + 30}"
	else
		return puts "\nn / 30 -> n = #{n / 30}"
	end
end

puts functionResult.call(n)