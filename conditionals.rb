require_relative "movie"

movie = Movie.new("Race", 9)

# if movie.rank >= 10
# 	puts "Hit"
# end

# puts "Hit" if movie.rank >= 10

# if movie.rank >=10
# 	puts "Hit"
# else
# 	puts "Flop"
# end

movie.rank >=10 ? (puts "Hit") : (puts "Flop")