weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Firday", "Saturday", "Sunday"]

# weekdays.each {|day| puts "#{day}"}

# class Array
# 	def my_each
# 		i=0
# 		while i < self.size
# 			yield self[i]
# 			i += 1
# 		end
# 	end
# end
# weekdays.my_each {|day| puts "#{day}"}


class Array
	def each
		i = 0
		while i< self.size
			yield self[i]
			i += 1
		end
		self # your created each run not pridefine each run
	end
end

weekdays.each {|day| puts "#{day}"}

# days = weekdays.each {|day| day}.map {|day| day.upcase}
days = weekdays.each {|day| }.map {|day| day.upcase} # its also run
puts days
