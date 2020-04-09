# names = %w(Dhoom Race Mela Krish)
# # puts names.sort
# puts names.sort_by {|w| w.length} #sort by length

require_relative "movie"

movie1 = Movie.new("Dhoom", 12)
movie2 = Movie.new("Race", 5)
movie3 = Movie.new("Krish", 7)

movies = [movie1, movie2, movie3]

# puts movie1.rank <=> movie2.rank // o/p => 1
# puts movie2.rank <=> movie1.rank  // o/p =>-1 
# puts movie1.rank <=> movie1.rank // o/p => 0
# puts movies.sort_by {|movie| movie.rank}.reverse
puts movies.sort