# 3.times do |number|
# 	name = "Moe"
# 	puts "#{number} Howdy, #{name}!"
# end

# puts name # its give error of u define local variable or method

# name = "Piyush"
# number = 100
# temp = Math::PI / 4

# 3.times do |number|
# 	name = "Moe"
# 	temp = 98.6
# 	puts "#{number} Howdy, #{name} is #{temp}!"
# end

# puts name # its print Moe because name is overried 
# puts number # its not overried because its block local variable so its print 100 
# puts temp # ites overried so prrint 98.6


name = "Piyush"
number = 100
temp = Math::PI / 4

3.times do |number; temp|
	name = "Moe"
	temp = 98.6
	puts "#{number} Howdy, #{name} is #{temp}!"
end

puts name # its print Moe because name is overried 
puts number # its not overried because its block local variable so its print 100 
puts temp # now its time not overried so prrint Math::PI / 4 value

