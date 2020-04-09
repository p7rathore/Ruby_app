class Movie
	attr_accessor :title, :rank
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

	def listing
		"#{@title} has a rank of #{normalized_rank}"
	end


	def to_s
		"#{@title} has a rank of #{@rank}" 
	end
end


movie1 = Movie.new("Dhoom", 10)
movie2 = Movie.new("Race", 5)
movie3 = Movie.new("Krish", 7)

movies = [movie1, movie2, movie3]

puts movies

movies.each do |movie|
	movie.thums_up
	puts movie
end