require_relative "playlist"
require_relative "movie_3d"

playlist = Playlist.new("Piyush")
playlist.load(ARGV.shift || "movies.csv")
playlist.save

movie3d = Movie3D.new("Ra.one", 7, 20)
playlist.add_movie(movie3d)

# playlist.play(5)
# playlist.print_stats

puts "==============================="
playlist2 = Playlist.new("Deepak")
movie4 = Movie.new("Mela", 10)
movie5 = Movie.new("Raj", 7)
movie6 = Movie.new("chhapaak", 7)
playlist2.add_movie(movie4)
playlist2.add_movie(movie5)
playlist2.add_movie(movie6)
# playlist2.play(3)
# playlist2.print_stats

loop do 
	puts "\nHow many viewings?('quit' to exit)"
	answer = gets.chomp.downcase
	puts "Enjoy your #{answer} viewings...."

	case answer
	when /\d+$/
		playlist.play(answer.to_i)
		playlist2.play(answer.to_i)
	when 'quit', 'exit'
		playlist.print_stats
		puts "=============================================="
		playlist2.print_stats
		break
	else
		puts "Please enter a number or 'quit' "
	end	
end
