class Movie
	# attr_reader :title 
	# attr_writer :title
	attr_accessor :title # by this  reader and writer both work done 
	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank 
	end

	def thums_up
		@rank += 1 
	end

	def thums_down
		@rank -= 1 
	end

	def normalized_rank
		@rank / 10
	end

	# attr_reader :title # write this in plce of method creatoin
	# def title
	# 	@title
	# end

	# attr_writer :title
	# def title=(new_title)
	# 	@title = new_title
	# end

	def listing
		"#{@title} has a rank of #{normalized_rank}"
	end


	def to_s
		"to_s method: #{@title} has a rank of #{normalized_rank}" 
	end
end


movie = Movie.new("dhoom",100)
movie.thums_up
puts movie.listing	
puts movie.title # for reader calling
puts movie.title = "Dhoom 2" #for update calling
puts movie

