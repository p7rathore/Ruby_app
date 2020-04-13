require_relative "movie"
movie1 = Movie.new("Krishna",7)
movie2 = Movie.new("Maha Bharat",7)
movie3 = Movie.new("Ramayan",15)

movies = [movie1,movie2,movie3]

File.open("movie_rankings", "w") do |file|
	movies.sort.each do |movie|
		file.puts "#{movie.title}, #{movie.rank}"
	end
end