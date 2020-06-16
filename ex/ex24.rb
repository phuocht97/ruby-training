puts "Let's practice everything."
puts 'You\'d need to know \'bout escapse with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "----------------"
puts poem
puts "----------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(numberStarted)
	jelly_beans = numberStarted * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end
	
	startPoint = 10000
	beans, beef, fish = secret_formula(startPoint)

	puts "With a starting point of: #{startPoint}"
	puts "We'd have #{beans} beans, #{beef} jars, and #{fish} crates."

	startPoint = startPoint/10
	puts "We can also do that this way:"
	puts "We'd have %s beans, a%d jars, and %d crates." %secret_formula(startPoint)