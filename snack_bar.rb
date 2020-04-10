# class Snack
# 	attr_reader :name, :cards

# 	def initialize(name,cards)
# 		@name = name
# 		@cards = cards
# 	end

# end

# snack = Struct.new(:name, :cards) # sturct create a Snack class, by this we aslo put class name non capitalize but we follow convention
# Snack = Struct.new(:name, :cards)
# # popcorn = snack.new("Popcorn", 20)
# popcorn = Snack.new("Popcorn", 20)
# puts popcorn.name
# puts popcorn.cards

# # candy = snack.new("Candy",23)
# candy = Snack.new("Candy",23)
# puts candy.name
# puts candy.cards


Snack = Struct.new(:name, :cards)

module SnackBar
	SNACKS = [ #we put arrary name with capitalize(Snakcs) but not put with small latter(snacks)
		# Snack.new("popcorn", 20) # we also put value with string
		Snack.new(:popcorn, 20),
		Snack.new(:candy, 10),
		Snack.new(:nachos, 40),
		Snack.new(:pretzel, 15),
		Snack.new(:soda, 5)
	]

	def self.random
		SNACKS.sample
	end
end

# puts SnackBar::SNACKS
# snack = SnackBar.random

# puts "Enjoy your #{snack.name} (#{snack.cards} cards)"