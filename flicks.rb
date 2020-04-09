require_relative "playlist"

movie1 = Movie.new("Dhoom", 10)
movie2 = Movie.new("Race", 5)
movie3 = Movie.new("Krish", 7)

playlist = Playlist.new("Piyush")
playlist.add_movie(movie1)
playlist.add_movie(movie2)
playlist.add_movie(movie3)
playlist.play(5)
playlist.print_stats

puts "==============================="
playlist2 = Playlist.new("Deepak")
playlist2.add_movie(movie1)

movie4 = Movie.new("Mela", 15)
playlist2.add_movie(movie4)
playlist2.add_movie(movie2)
playlist2.play(3)
playlist2.print_stats

