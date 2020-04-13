module Rankable
	# def thumbs_up
	# 	puts "#{@title} got a thumbs up with rank has #{@rank}"
	# end

	def thumbs_up
		# @rank += 1 # for this not require attr_accessor :Rankable
		self.rank += 1 # for this we require call attr_accessor :rank
	end

	def thumbs_down
		# @rank -= 1
		self.rank -= 1
	end
	def hit?
		self.rank >= 10
	end

	def status
		hit? ? "Hit" : "Flop"
	end

	def <=>(other)
		other.rank <=> self.rank
	end

	def normalized_rank
		self.rank / 10
	end
end

# class Movie
# 	include Rankable
# 	def initialize(title, rank)
# 		@title = title
# 		@rank = rank
# 	end
# end

# class Song
# 	include Rankable
# 	def initialize(title, rank)
# 		@title = title
# 		@rank = rank
# 	end
# end

# movie = Movie.new("raja", 10)
# song = Song.new("kajrare", 13)

# puts movie.thumbs_up

# puts song.thumbs_up