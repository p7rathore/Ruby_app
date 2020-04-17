# spec = Gem::Specification.new do |s|
# 	s.name			= 'my-gem'
# 	s.version		= '2.0.0'
# 	s.summary		= "This is a cool gem!"
# 	s.description	= "Much longer explanation of my cool gem."
# 	s.licenses		=  ['MIT']
# 	s.authors		=  ["Ruby COder"]
# 	s.email			=  'rubycoder@example.com'
# 	s.files			=	["lib/example.rb"]
# 	s.homepage		= 'https://rubygems.org/gems/example'
# end 

# puts spec


module Jem
	class Specification
		attr_accessor :name, :version, :summary

		def initialize
			@version = '1.0.0'
			yield (self) if block_given?
		end
	end
end

# spec = Jem::Specification.new 
# spec.name = "Piyush"
# do |s|
# 	s.name = "my_gem"
# 	s.version = '2.0.0'
# 	s.summary = "This is a cool gem!"
# end

spec = Jem::Specification.new do |s|
	s.name = "my_gem"
	s.version = '2.0.0'
	s.summary = "This is a cool gem!"
end



p spec

puts spec