# 3.times {|n| puts "#{n} Echo!"}

# def three_times
# 	yield 0
# 	yield 1
# 	yield 2
# end
# three_times {|n| puts "#{n} Echo!"}

# def three_times
# 	i = 0
# 	while i < 3
# 		yield i
# 		i += 1
# 	end
# end

# three_times {|n| puts "#{n} Echo !"}

# def three_times(number)
# 	i = 0
# 	while i < number
# 		yield i
# 		i+=1
# 	end
# end
# three_times(2) {|n| puts "#{n} Echo!"}

class Integer
	def times
		i = 0
		while i < self
			yield i
			i += 1
		end
	end
end

10.times {|n| puts "#{n} Echo!"}