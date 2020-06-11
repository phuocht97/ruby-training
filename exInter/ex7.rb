#Write a Ruby program to accept a filename from the user print the extension of that
file = "home/phuocht/RubyTraining/exInter/ex7.rb"
filename = File.basename file
puts "File name : #{filename}"
basename = File.basename file, ".rb"
puts "Base name : #{basename}"
extention = File.extname file
puts "Extention : #{extention}"
pathname = File.dirname file
puts "Path name : #{pathname}" 