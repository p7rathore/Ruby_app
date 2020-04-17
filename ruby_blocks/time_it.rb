

def time_it(lable)
	start_time = Time.now
	yield
	elapsed_time = Time.now - start_time
	puts "#{lable} took #{elapsed_time} seconds" 	
end

time_it("Sleepy code") do 
	sleep(0.5)
end