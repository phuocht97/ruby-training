#Write a Ruby program to display the current date and time
time = Time.now
formatTime = time.strftime "%d/%m/%y %H:%M" 
puts "Current Date and Time: #{formatTime}"