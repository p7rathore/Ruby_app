# f = File.open("letter.txt", "w") 
# f.puts "Hello"
# f.puts "Goodbey"
# f.close

# f = File.open("letter.txt", "r")

# f.each {|line| puts "its file content #{line}"}
# f.close 

class File
	def self.my_open(filename, mode)
		file = self.open(filename, mode)
		return file unless block_given?
		begin
		 	yield (file) if block_given?
		 	ensure
		 		file.close
		end
	end	 
end

file = File.my_open("letter.txt", "r") 
file.each{|line| puts "without block_given #{line}" }
file.close

File.my_open("letter.txt", "w") do |f|
	f.puts "HELLO"
	f.puts "GOODBEY"
end

File.my_open("letter.txt", "r") do |f|
	f.each {|line| puts "with block_given file content #{line}"}
end