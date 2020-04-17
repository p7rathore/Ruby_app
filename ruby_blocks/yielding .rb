# 3.times do 
# 	puts "Running block!"
# end

# def run_my_block
# 	puts "Starting method..."
# 	yield
# 	puts "Back in method."
# end

# run_my_block do 
# 	# puts "Running block!"
# 	puts "The time is #{Time.now}"
# end

# =============== its show error 
# def roll
# 	puts "Starting method..."
# 	yield
# 	puts "Back in method."
# end

# roll 


# ======================its not show error
# def roll
# 	puts "Starting method..."
# 	puts "Back in method."
# end

# roll do
# 	number = rand(1..6)
# 	puts "You rolled a #{number}"
# end

#===================for checking block is given or not
# def roll
# 	puts "Starting method..."
# 	yield if block_given?
# 	puts "Back in method."
# end

# roll if not present block then nott show error b/c we use block_given? 

# roll do
# 	number = rand(1..6)
# 	puts "You rolled a #{number}"
# end


def roll
	puts "Starting method..."
	number = rand(1..10)
	# yield "Larry", number
	# yield number,"Larry" #its print 8 rolled a Larry

	# yield "Larry", number
	# yield "Moe", number

	result = yield "Larry", number
	puts "Back in method.#{result}"
end

roll do |name, number|
	# number = rand(1..6)
	puts "#{name} rolled a #{number}"
	number * 2 #its return result  print this Back in method.20
	# "Hello"  #print this   Back in method.Hello
	# puts number * 2 #its return nil b/ puts return nil value  print this Back in method.
end



