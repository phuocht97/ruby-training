begin
	file = open("not_exist_file.txt")
	if file
		puts "File opened successfully"
	end
rescue
	puts "File not found"
end
print file, "\n"
#retry
def retry_to_call(retry_times, &block)
	block.call
rescue Exception => e
	if retry_times > 0
		p 'meet rescue and retry time: '+ retry_times.to_s
		retry_times -=1
		retry
	else
		p 'retry times finished!'
	end
end

	retry_to_call(3) do
		file = open("file_name.txt")
		if file
			puts "File opened successfully"
		end
	end
#raise
module RescueModule
	class NotRescue < StandardError; #Standard Error --> class Constant
	end
end
begin
	name = nil
		raise RescueModule::NotRescue, "Unfound" if name.nil?
	rescue => e #Exception 1 method, khong nen viet rescue Exception => e
		puts e
	end
