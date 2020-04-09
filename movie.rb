class Movie
	attr_accessor :title, :rank
	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
	end

	def hit?
		rank >= 10
	end

	def <=>(other_movie)
		other_movie.rank <=> @rank
	end

	def status
		hit? ? "Hit" : "Flop"
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})"
	end
end