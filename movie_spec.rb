require_relative "flicks"

describe Movie do 
	before do
		@initial_rank = 10
		@movie = Movie.new("Dhoom", @initial_rank)
	end

	it "has a capitalize title" do
		
		@movie.title.should == "Dhoom" 
	end
	
	it "has an initial rank" do
		
		@movie.rank.should == 10
	end

	it "has a string representation" do 
		
		@movie.to_s.should == "Dhoom has a rank of 10"
	end

	it "increases rank by 1 when given a thumbs up" do 
		@movie.thumbs_up
		@movie.rank.should == @initial_rank + 1
		# movie.thumbs_up.should == initial_rank + 1
	end

	it "decreases rank by 1 when given a thumbs down" do 
		@movie.thumbs_down
		@movie.rank.should == @initial_rank - 1
		# movie.thumbs_down.should == initial_rank - 1 
	end

	context "created with default rank" do
		before do
			@movie = Movie.new("Dhoom")
		end

		it "has a rank of 0" do
			@movie.rank.should == 0
		end
	end
end