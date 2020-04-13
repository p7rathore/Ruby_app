class Order
	def initialize(email, total)
		@email = email
		@total= total
	end

	def to_s
		"#{@email}: $#{@total}"
	end
end

orders = []

# 5.times do 
# 	orders << Order.new("customer@example.com", 10)
# end

# 5.times { orders << Order.new("customer@example.com", 10) }


# 5.times do |n|
# 	orders << Order.new("customer#{n}@example.com", 10)
# end

# 5.times {|n| orders << Order.new("customer#{n}@example.com", 10)}


# 1.upto(5) do |n|
# 	orders << Order.new("customer#{n}@example.com", 10)
# end

# 1.upto(5) { |n| orders << Order.new("customer#{n}@example.com", 10)}

1.upto(5) {|n| orders << Order.new("customer#{n}@example.com", 10 * n) }

puts orders