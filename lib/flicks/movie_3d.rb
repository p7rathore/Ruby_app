require_relative 'movie' 

class Movie3D < Movie
	attr_accessor :wow_fector
	def initialize(title, rank, wow_fector)
		super(title, rank)
		@wow_fector = wow_fector	
	end

	def thumbs_up
		# @rank += (1 * @wow_fector) 
		@wow_fector.times { super } # its call perent thumbsup method
	end


	def show_effect
		puts "Wow!" * @wow_fector
	end
end

movie3d = Movie3D.new("Ra.one", 7, 10)

puts movie3d.title
puts movie3d.rank
puts movie3d.wow_fector

movie3d.thumbs_up
puts movie3d.rank


puts movie3d

movie3d.show_effect
