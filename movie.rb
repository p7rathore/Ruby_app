class Movie
	attr_accessor :title, :rank
	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} has a rank of #{@rank}"
	end
end

puts "=================movies=============="
movie1 = Movie.new("Dhoom", 10)
movie2 = Movie.new("Race",7)
movie3 = Movie.new("Krish",8)

puts movie1
puts movie2
puts movie3