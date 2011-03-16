require 'spec_helper'

describe Scorerb do
	it "should add score method to strings" do
		String.should respond_to :score
	end
	
	it "should return 1 for exact match" do
		"Hello".score("Hello").should be 1.0	
	end
	
	it "should return 0 for no matches" do
		"Hello".score("abc").should be 0
	end

	it "should return 0.5 for half match" do
		"Hi there".score("Hi t").should be 0.5
	end

	it "should'n return 0 on semi-correct match with fuzzines on" do
		"Hi there".score("Hi thi", 0.7).should be > 0
	end

	it "should drop score with higher fuzzines" do
		"Hi there".score("Hi thi", 0.1).should be > "Hi there".score("Hi thi", 0.8)
	end
end
