require_relative "rankable"
class Movie
	# attr_reader :rank
	attr_accessor :title, :rank

	include Rankable

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
		@snack_carbs = Hash.new(0)
	end

	def self.from_csv(line)
		title, rank = line.split(',')
		Movie.new(title, Integer(rank))
	end

	def to_csv
		"#{@title}, #{@rank}" 
	end

	# def hit?
	# 	rank >= 10
	# end

	
	# def <=>(other_movie)
	# 	other_movie.rank <=> @rank
	# end

	
	def carbs_consumed
		@snack_carbs.values.reduce(0, :+)
	end
	
	def each_snack
		@snack_carbs.each do |name, carbs|
			snack = Snack.new(name, carbs)
			yield(snack)
		end
	end

	def ate_snack(snack)
		@snack_carbs[snack.name] += snack.carbs
		puts "#{@title}'s led to #{snack.carbs} #{snack.name} being consumed."
		puts "#{@title}'s snacks: #{@snack_carbs}"
	end

	# def status
	# 	hit? ? "Hit" : "Flop"
	# end

	# def thumbs_up
	# 	@rank += 1
	# end

	# def thumbs_down
	# 	@rank -= 1
	# end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})"
	end
end
