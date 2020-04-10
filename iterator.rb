# def twice
# 	puts "before Yields"
# 	yield
# 	yield
# 	puts "after Yields"
# end

#  twice {puts "yield block"}

# def three_times
# 	puts "ready"
# 	yield(1)
# 	puts "set"
# 	yield 2
# 	puts "Go!"
# 	yield 3
# end

# three_times {|number| puts number}

# def compute
# 	if block_given?
# 	# puts yield	
# 	puts yield(1)
# 	else
# 		puts "Dose not compute"
# 	end
# end
# compute

# compute do 
# 	"hello"
# end

# compute do |n|
# 	"#{n} hello"
# end
# # compute {"hello"}


numbers = (1..10).to_a
# puts numbers
# evens = numbers.select{|n| n.even?}
# puts evens

def my_select(numbers)
	evens = [] 
	numbers.each do |number|
		# evens << number if number.even? # without using yield
		evens <<  number if yield(number) # using yield
	end
	evens	
end

puts my_select(numbers) {|number| number.even?}




