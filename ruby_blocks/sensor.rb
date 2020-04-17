class Sensor
	def temperature
		rand(100..500)
	end

	def level
		rand(1..5)
	end
end

sensor = Sensor.new

# puts "Checking water temperature..."
# result = sensor.temperature < 150

# if result
# 	puts "OK"
# else
# 	puts "FAILED!"
# end

# result ? (puts "OK") : (puts "FAILED!")

# puts "Checking water level..."
# result = sensor.level > 3

# if result
# 	puts "OK"
# else
# 	puts "FAILED"
# end
# result ? (puts "OK") : (puts "FAILED")

def with_checking(description)
		puts "Checking water #{description}"
		result = yield
		# if result
		# 	puts "OK"
		# else
		# 	puts "FAILED!"
		# end

		result ? (puts "OK") : (puts "FAILED!")
	end

with_checking("temperature") { sensor.temperature < 150 } 
with_checking("level") { sensor.level > 3 } 
with_checking("happiness"){ Time.now.saturday?} 