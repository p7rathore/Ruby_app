require_relative "movie"
require_relative "module_playlist"

class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def roll_die
		rand(1..6)
	end
	
	def play
		puts "****************#{@name} Playlist**************" 
		puts @movies

		@movies.each do |movie|
			ModulePlayMethod.review(movie)
			puts movie
		end
	end

end
puts "=================playlist=============="
playlist1 = Playlist.new("Piyush")
movie1 = Movie.new("Dhoom",10) 

playlist1.add_movie(movie1)

movie2 = Movie.new("Race",5) 
playlist1.add_movie(movie2)

movie3 = Movie.new("krish",7) 
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Deepak")

playlist2.add_movie(movie1)
movie4 = Movie.new("Mela", 15)
playlist2.add_movie(movie4) 
playlist2.add_movie(movie2)
playlist2.play

