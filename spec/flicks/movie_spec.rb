require "flicks/movie"

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
		# movie = Movie.new("Dhoom", 9)
		# movie.to_s.should == "Dhoom has a rank of 9 (Flop)"  for flop sepc run write both line

		@movie.to_s.should == "Dhoom has a rank of 10 (Hit)"
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

	context "movie has rank a at lest 10" do 
		before do
			@movie = Movie.new("Dhoom",10)
		end

		it "is a hit" do 
			# @movie.hit?.should == true
			# @movie.hit?.should be true
			# @movie.hit?.should be_truthy
			@movie.should be_hit 
		end

		it "has a hit status" do 
			@movie.status.should == "Hit"
		end
	end

	context "movie has a rank less then 10 " do 
		before do 
			@movie = Movie.new("Dhoom", 9)
		end

		it "is a Flop" do 
			# @movie.hit?.should == false
			# @movie.hit?.should be false
			# @movie.hit?.should be_falsey
			@movie.should_not be_hit
		end

		it "has a Flop status" do 
			@movie.status.should == "Flop"
		end
	end
end