require_relative "movie"

movie1 = Movie.new("Dhoom", 12)
movie2 = Movie.new("Race", 5)
movie3 = Movie.new("Krish", 7)

movies = [movie1, movie2, movie3]
puts movies.sort