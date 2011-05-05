require 'spec_helper'

describe Scorerb::Array do 

	it "should add score method to arrays" do
		[].should respond_to :score
	end
	
	it "should return an hash for score arrays" do
	  result = { "Hello" => 1, "Hel" => 0.4000000000000001, "Hi" => 0 }
		["Hello", "Hel", "Hi"].score("Hello").should be == result
	end

  it "should accept fuzzines" do
    result = { "Hello" => 1, "Hel" => 0.4000000000000001, "Hi" => 0.2833333333333333 }
		["Hello", "Hel", "Hi"].score("Hello", :fuzz => 0.5 ).should be == result
  end

  it "should return nil for empty arrays" do
    [].score("Hello").should be == nil    
  end

  it "should accept option to convert everything to string" do
    result = {"1" => 1 , "2" => 0, "3" => 0}
    [1,2,3].score("1", :to_s => true).should be == result
  end

  it "should accept all the options together" do
    result = {"1" => 1 , "12" => 0.55, "113" => 0.41666666666666663 }
    [1,12,113].score("1", :to_s => true, :fuzz => 0.5 ).should be == result
  end
end
