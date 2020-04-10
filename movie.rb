class Movie
	attr_accessor :title, :rank
	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
		@snack_cards = Hash.new(0)
	end

	def hit?
		rank >= 10
	end

	def <=>(other_movie)
		other_movie.rank <=> @rank
	end

	def cards_consumed
		@snack_cards.values.reduce(0, :+)
	end

	def ate_snack(snack)
		@snack_cards[snack.name] += snack.cards
		puts "#{@title}'s led to #{snack.cards} #{snack.name} being consumed."
		puts "#{@title}'s snacks: #{@snack_cards}"
	end

	def status
		hit? ? "Hit" : "Flop"
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})"
	end
end
