require 'spec_helper'

describe Scorerb do
	it "should add score method to strings" do
		"".should respond_to :score
	end
	
	it "should return 1 for exact match" do
		"Hello".score("Hello").should be == 1.0	
	end
	
	it "should return 0 for no matches" do
		"Hello".score("abc").should be == 0
	end

	it "should'n return 0 on semi-correct match with fuzzines on" do
		"Hi there".score("Hi thi", 0.7).should be > 0
	end

	it "should score more points starting the string" do
		"Hi there".score("Hi t").should be > "Hi there".score("here")
	end

	it "should score more points if the star letter is at same case" do
		"Hi there".score("Hi there").should be > "Hi there".score("hi there")
	end
	
	specify "acronyms should have better scores" do
		"Hillsdale Michigan".score("HiMi").should be > "Hillsdale Michigan".score("Hills")
	end

	it "should drop score with lower fuzzines" do
		"Hi there".score("Hi thi", 0.1).should be < "Hi there".score("Hi thi", 0.8)
	end

  describe "finding first match unconsidering letters case" do
    it "should find the first match given a lowercase" do
      "Abc".index_anycase("a").should be == 0
    end
    it "should find the first match given a uppercase" do
      "Abc".index_anycase("A").should be == 0
    end

    it "should return nothing if no matches" do
      "Abc".index_anycase("Z").should be == nil
    end
  end

end
