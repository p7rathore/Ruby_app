# def movie_listing
# 	puts "Movie: Dhoom"
# end

# movie_listing

# def movie_listing
# 	"Movie: Dhoom"
# end

# puts movie_listing



# def movie_listing(title, rank)
# 	"#{title.capitalize} has a rank of #{rank}"
# end

# puts movie_listing("Dhoom") # show errors of worng number of arguments




# def movie_listing(title, rank=0)
# 	curretn_time = Time.new
# 	today = curretn_time.strftime("%A")
# 	"#{title.capitalize} has a rank of #{rank} as of #{today}"
# end

# puts title # show error b/c title , current_time and today are  locale variable
# puts movie_listing("Dhoom",10) #o/p is Dhoom has a rak of 10
# puts movie_listing("Race") #o/p is Race has a rak of 0

# a_title = "Dhoom"

# puts movie_listing(a_title,10)


def weekday
	current_time = Time.new
	current_time.strftime("%A")
end

def movie_listing(title, rank=0)
	# "#{weekday}: #{title} has a rank of #{rank}"
	"#{weekday.upcase}: #{title} has a rank of #{rank}"
end

puts movie_listing("Dhoom",10)
puts movie_listing("Race")