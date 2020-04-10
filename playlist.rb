require_relative "movie"
require_relative "module_playlist"
require_relative "snack_bar"

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
		snacks = SnackBar::SNACKS
		puts "\nThere are #{snacks.size} snacks available in the snack bar."

		snacks.each do |snack|
			puts "#{snack.name} has #{snack.cards} cards"
		end

		1.upto(viewing) do |count|
			puts "\nViewing : #{count}" 
			@movies.each do |movie|
				ModulePlayMethod.review(movie)
				snack = SnackBar.random
				puts "#{movie.title} led to #{snack.cards} #{snack.name} being consumed."
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
