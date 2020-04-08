# class Movie
# 	def initialize(title, rank)
# 		puts "Created a movie object with title #{title} and rank#{rank}"
# 	end	
# end

# movie1 = Movie.new("dhoom",10)
# movie2 = Movie.new("Race",5)


# class Movie
# 	def initialize(title, rank)
# 		puts "Created a movie object with title #{title} and rank#{rank}"
# 	end	

# 	def listing
# 		"#{title} has a rank of #{rank}" o/p show error title and rank is undefind variable
# 	end
# end

# movie1 = Movie.new("dhoom",10)
# puts movie1.listing	
# movie2 = Movie.new("Race",5)
# puts movie1.listing

class Movie
	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank 
	end

	def thums_up
		# @rank = @rank + 1
		@rank += 1 
	end

	def thums_down
		# @rank = @rank - 1
		@rank -= 1 
	end

	def listing
		"#{@title} has a rank of #{@rank}" #now its show o/p b/c we create a instansce variable and instance variable access any where in class
		# we also change the name of instance var like @movie @rank and we also update the instance variable
	end


	def to_s # its auto call method
		"to_s method: #{@title} has a rank of #{@rank}" 
	end
end


movie1 = Movie.new("dhoom",10)
movie1.thums_up
puts movie1.listing	
puts movie1

movie2 = Movie.new("Race",5)
movie2.thums_down
puts movie2.listing
puts movie2