# class Movie
# 	attr_reader :title, :rating, :duration

# 	def initialize(title, rating, duration)
# 		@title = title
# 		@rating = rating
# 		@duration = duration
# 	end

# 	def watch
# 		puts "Watching #{title} - #{rating} (#{duration} mins)..."
# 	end
# end

# movie1 = Movie.new("Dhoom 3", "G", 81 )
# movie2= Movie.new("Raj", "PG", 118 )
# movie3 = Movie.new("Mela", "G", 102 )
# movie4 = Movie.new("Krish", "PG", 120 )
# movie5 = Movie.new("Dar", "G", 100 )

# class MovieQueue
# 	# include Enumerable when define each but not include Enumerable and call select then show error(`<main>': private method `select' called for #<MovieQueue:0x000055bc89caf148> (NoMethodError))
# 	include Enumerable
# 	def initialize(name)
# 		@name = name
# 		@movies = []
# 	end

# 	def add_movie(movie)
# 		@movies << movie
# 	end

# 	# def each   # when call select and not define each the show error (`select': undefined method `each' for #<MovieQueue:0x0000564da665f258> (NoMethodError))
# 	# 	@movies.each {|movie| yield movie}
# 	# end

# 	def each
# 		# @movies.each {|movie| yield movie}
# 		@movies.each do |movie|
# 			puts "Yielding #{movie.title}..."
# 			yield movie
# 		end  
		
# 	end

# 	# def each_PG_movie
# 	# 	@movies.select{|movie| movie.rating == "PG"}.each{|movie| yield movie}
# 	# end

# 	def each_by_rating(rating)
# 		@movies.select{|movie| movie.rating == rating}.each{|movie| yield movie}
# 	end
# end

# queue = MovieQueue.new("Friday Night")
# queue.add_movie(movie1)
# queue.add_movie(movie2)
# queue.add_movie(movie3)
# queue.add_movie(movie4)
# queue.add_movie(movie5)

# queue.each {|movie| puts movie.watch}

# puts "=============PG Rating Movies=============="

# # queue.each_PG_movie {|movie| puts movie.watch}
# queue.each_by_rating("PG") {|movie| puts movie.watch}
# puts "=============G Rating Movies=============="
# queue.each_by_rating("G") {|movie| puts movie.watch}

# puts "=============Use of select=============="

# # queue.select{|movie| puts movie.watch}
# long_movie = queue.select {|movie| movie.duration > 100 }
# puts long_movie
# p long_movie

# puts "=============Use of delect=============="
# # queue.detect{|movie| movie.title =~ /3/} # o/p Yieding Dhoom 3 ...
# p queue.detect{|movie| movie.title =~ /3/}
# puts queue.detect{|movie| movie.title =~ /3/}


class Movie
	attr_reader :title, :rating, :duration

	def initialize(title, rating, duration)
		@title = title
		@rating = rating
		duration = duration
	end

	def watch
		puts "Watching #{title} - #{rating} (#{duration} mins)..."
	end
end

movie1 = Movie.new("Dhoom 3", "PG", 108)
movie2 = Movie.new("Race", "G", 120)
movie3 = Movie.new("Raj", "PG", 112)
movie4 = Movie.new("Krish", "G", 100)
movie5 = Movie.new("Mela", "PG", 90)

module MyEnumerable
	def my_select
		# @movies.each {|movie| yield movie}
		
		new_array = []
		each do |value|
			new_array << value if yield(value)
		end
		new_array		
	end

	def my_map
		new_array =[]
		each do |value|
			new_array << yield(value) 
		end

	end
end

class MovieQueue
	include MyEnumerable
	def initialize(name)
		@name = name
		@movies =[]
	end

	def add_movie(movie)
		@movies << movie
	end

	def each
		@movies.each{|movie| yield movie}
	end

	def each_by_rating(rating)
		@movies.select {|movie| movie.rating == rating}.each {|movie| yield movie}
	end
end

queue = MovieQueue.new("Friday_Movies")
queue.add_movie(movie1)
queue.add_movie(movie2)
queue.add_movie(movie3)
queue.add_movie(movie4)
queue.add_movie(movie5)

# queue.my_select{|movie| puts movie.watch}

titles = queue.my_map {|movie| puts movie.title.upcase}
titles = queue.my_map{|movie| movie.title.upcase}
p titles
puts titles