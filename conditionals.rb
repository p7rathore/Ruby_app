require_relative "movie"

movie = Movie.new("Race", 9)
movie.rank >=10 ? (puts "Hit") : (puts "Flop")