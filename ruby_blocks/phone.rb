class Phone
	attr_accessor :airplane_mode
	def initialize
		@airplane_mode = false
	end


	def text(message)
		if @airplane_mode
			puts "Saved text: #{message}"
		else
			puts "Sent text: #{message}"
		end
	end

	def in_airplane_mode
		@airplane_mode = true
		yield
		# @airplane_mode = false
		rescue Exception => e # its handle the raise "whoops!"
			puts e.message
		ensure
			@airplane_mode = false # now print Sent text: Just landed!
			puts "Mode is now #{@airplane_mode}"
	end
end

phone = Phone.new

# phone.airplane_mode = true
# phone.text("Just took off!")
# phone.text("At 30,000 ft!")
# phone.airplane_mode = false
# phone.text("Just landed!")

phone.in_airplane_mode do 
	phone.text("Just took off!")
	phone.text("At 30,000 ft!")
	raise "whoops!" #its give error and not print Jsut landed! only b/c exception is not handled but it handle by rescue then its print whoops and also print just landed!
	#but its print Saved text: Just landed not print Sent text: Just landed b/c @airplane_mode = false is not excute , excute rescue Exception line due this its print Saved text: just landed!(means @airplane_mode=true)
	#for avoid this we use ensure which run just after rescue exception
end
phone.text("Just landed!")