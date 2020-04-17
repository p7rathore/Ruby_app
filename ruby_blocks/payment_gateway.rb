class PaymentGateway
	def initialize(user, password)
		@user = user
		@password = password
	end	

	def connect
		puts "Connected as #{@user}"
	end

	def disconnect
		puts "Disconnected as #{@user}"
	end

	def submit(type, amount)
		puts "Submitted #{type} for #{amount}"
	end

	# def open_gateway(user, password)
	# 	gateway = PaymentGateway.new(user, password)
	# 	gateway.connect
	# 	yield(gateway) if block_given?
	# 	gateway.disconnect
	# end

	# def self.open(user, password)
	# 	gateway = self.new(user, password)
	# 	gateway.connect
	# 	return gateway unless block_given? 
	# 	yield (gateway)
	# 	gateway.disconnect
	# end

	def self.open(user, password)
		gateway = self.new(user, password)
		gateway.connect
		return gateway unless block_given? 
		# yield (gateway)
		begin
			yield (gateway)  # only block ke liye chale
		rescue Exception => e
			puts e.message
		ensure					
			gateway.disconnect	
		end
	end
end

# gateway = PaymentGateway.new("piyush", "0007")
# gateway.connect
# gateway.submit(:sale, 100)
# gateway.submit(:sale, 120)
# gateway.disconnect

# gateway = PaymentGateway.new("piyush", "0007")
# gateway.connect
# gateway.submit(:refund, 50)
# gateway.submit(:refund, 20)
# gateway.disconnect


# def open_gateway(user, password)
# 	gateway = PaymentGateway.new(user, password)
# 	gateway.connect
# 	yield(gateway) if block_given?
# 	gateway.disconnect
# end

# open_gateway("piyush", "0007") do |gateway|
# 	gateway.submit(:sale, 100)
# 	gateway.submit(:sale, 120)
# end


PaymentGateway.open("piyush", "0007") do |gatway|
	gatway.submit(:sale, 100)
	gatway.submit(:sale, 120)
end

PaymentGateway.open("piyush", "0007") do |gatway|
	gatway.submit(:refund, 50)
	gatway.submit(:refund, 20)
	raise "Problems!"
end

gateway = PaymentGateway.open("piyush", "0007")
gateway.submit(:Void, 15.00)
gateway.disconnect




