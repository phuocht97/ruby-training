class MegaGreeter
	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def xinchao
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{names}!"
		end
	end

	def tambiet
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Bai Bye #{@names.join(", ")}. Hen gap lai!"
		else
			puts"Bye #{@names}. Hen gap lai!"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.xinchao
	mg.tambiet

	mg.names = "Zeke"
	mg.xinchao
	mg.tambiet

	mg.names = ["Le", "Quy", "Don", "Nguyen", "Trai"]
	mg.xinchao
	mg.tambiet

	mg.names = nil
	mg.xinchao
	mg.tambiet
end
