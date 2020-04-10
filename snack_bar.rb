# class Snack
# 	attr_reader :name, :carbs

# 	def initialize(name,carbs)
# 		@name = name
# 		@carbs = carbs
# 	end

# end

# snack = Struct.new(:name, :carbs) # sturct create a Snack class, by this we aslo put class name non capitalize but we follow convention
# Snack = Struct.new(:name, :carbs)
# # popcorn = snack.new("Popcorn", 20)
# popcorn = Snack.new("Popcorn", 20)
# puts popcorn.name
# puts popcorn.carbs

# # candy = snack.new("Candy",23)
# candy = Snack.new("Candy",23)
# puts candy.name
# puts candy.carbs


Snack = Struct.new(:name, :carbs)

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

# puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"