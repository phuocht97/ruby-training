states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'Califonia' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '-' * 10
states.each do |key, value|
	city = cities[value]
	puts "#{key} is abbreviated #{value} and has city #{city}"
end

puts '-' * 10
state = states['Texas']
if !state
	puts "Ko có Texas."
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"