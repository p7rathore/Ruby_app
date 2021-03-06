class Order

	TAX_TABLE = {"CO" => 0.02, "MT" => 0.00, "AZ" => 0.04}
	attr_reader :email, :total, :state, :status

	def initialize(email, state, total, status=:pending)
		@email = email
		@state = state
		@total =total
		@status =status
	end

	def tax
		total * TAX_TABLE[state]
	end

	def to_s
		"#{email} (#{state}): $#{total} - #{status}"
	end
end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

puts orders

puts "big_orders:"
big_orders = orders.select{ |o| o.total >= 300}
puts big_orders # its return arry with values

big_orders = orders.select { |o| puts o.total >=300  } # its print true, true, false, false
puts big_orders # its return nil because puts return nil

puts orders.select {|o| o.total >=300 } #its return array with values

puts orders.select do |o|
	o.total >= 300 # its return <Enumerable :90909090> because in this select is not bounded and with single line select is bounded 
end

puts "Small orders:"
small_orders = orders.reject {|o| o.total >= 300}
puts small_orders

puts orders.any? {|o| o.status == :pending } #if one get true return true after that not check other remaning values  

order = orders.detect {|o| o.status == :pending} # if conition true then its return data not true(like any?) and its also not check other remaning values
puts order


# results = orders.partition{|o| o.status == :pending }
# # p results
# puts results

pending_orders, completed_orders = orders.partition{ |o| o.status == :pending}
puts pending_orders
puts "Pending:"
puts pending_orders

puts "completed:"
puts completed_orders


big_orders, Big_orders = orders.partition{ |o| o.total >= 300}
puts "Big:"
puts big_orders

puts "Small:"
puts small_orders


# puts "Newsletter emails:"
# emails = []
# orders.each { |o|  emails << o.email.downcase}
# p emails
# puts emails

#by use of map
# puts orders.map { |o| o.email.downcase}

# orders.map {|o| puts o.email.downcase} # its return value

# emails_by_map = orders.map {|o| puts o.email.downcase} # but its return nill into variable
# p emails_by_map
# puts emails_by_map

emails_by_map = orders.map {|o| o.email.downcase}
puts emails_by_map

puts "Taxes:"
# co_orders = orders.select{ |o| o.state == "CO"}
# co_taxes = co_orders.map {|o| o.tax}
# p co_taxes
# puts co_taxes

co_taxes = orders.select{ |o| o.state == "CO"}.map {|o| o.tax} # by short tric
puts co_taxes

# sum = 0
# orders.each { |o| sum +=o.total}
# puts "Total sales: $#{sum}"

#by use reduce
sum = orders.reduce(0) {|sum, order| sum + order.total}
puts "Total sales: $#{sum}"

# total_tax = orders.reduce(0) { |total, order| total + order.tax}
total_tax = orders.map {|o| o.tax}.reduce(:+) # by short trick
puts "Total tax: $#{total_tax}"