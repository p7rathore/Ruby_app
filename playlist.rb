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
	
	def play(viewing)
		puts "****************#{@name} Playlist**************" 
		puts @movies.sort
		1.upto(viewing) do |count|
			puts "\nViewing : #{count}" 
			@movies.each do |movie|
				ModulePlayMethod.review(movie)
				puts movie
			end
		end	
	end

	def print_stats
		puts "\n#{@name}'s Stats: "

		hits, flops = @movies.partition{|movie| movie.hit?}

		puts "\nHits: "
		puts hits.sort

		puts "\nFlops: "
		puts flops.sort
	end

end
