numbers = (1..10).to_a
def my_select(numbers)
	evens = [] 
	numbers.each do |number|
		# evens << number if number.even? # without using yield
		evens <<  number if yield(number) # using yield
	end
	evens	
end

puts my_select(numbers) {|number| number.even?}




