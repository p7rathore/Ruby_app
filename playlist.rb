require_relative "movie"

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
			number_rolled = roll_die
			# if number_rolled < 3
			# 	movie.thumbs_down
			# 	puts "#{movie.title} got a thumbs down."
			# elsif number_rolled < 5
			# 	puts "#{movie.title} was skipped."
			# else
			# 	movie.thumbs_up
			# 	puts "#{movie.title} got a thumbs up"
			# end	

			case number_rolled
			when 1..2
				movie.thumbs_down
				puts "#{movie.title} got a thumbs down."
			when 3..4
				puts "#{movie.title} was skipped."
			else
				movie.thumbs_up
				puts "#{movie.title} got a thumbs up"
			end	
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

