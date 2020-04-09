require_relative "playlist"

# class Movie
# 	attr_accessor :title, :rank
# 	def initialize(title, rank=0)
# 		@title = title.capitalize
# 		@rank = rank 
# 	end

# 	def thumbs_up
# 		@rank += 1 
# 	end

# 	def thumbs_down
# 		@rank -= 1 
# 	end

# 	def normalized_rank
# 		@rank / 10
# 	end

# 	def listing
# 		"#{@title} has a rank of #{normalized_rank}"
# 	end


# 	def to_s
# 		"#{@title} has a rank of #{@rank}" 
# 	end
# end

# class Playlist
# 	def initialize(name)
# 		@name = name
# 		@movies = []
# 	end

# 	def add_movie(movie)
# 		@movies << movie
# 	end

# 	def play
# 		puts "#{@name} Play list:"
# 		puts @movies

# 		@movies.each do |movie|
# 			movie.thumbs_up
# 			puts movie
# 		end
# 	end
# end



# movie1 = Movie.new("Dhoom", 10)
# movie2 = Movie.new("Race", 5)
# movie3 = Movie.new("Krish", 7)

# playlist = Playlist.new("Piyush")
# playlist.add_movie(movie1)
# playlist.add_movie(movie2)
# playlist.add_movie(movie3)
# playlist.play

# puts "==============================="
# playlist2 = Playlist.new("Deepak")
# playlist2.add_movie(movie1)

# movie4 = Movie.new("Mela", 15)
# playlist2.add_movie(movie4)
# playlist2.add_movie(movie2)
# playlist2.play


