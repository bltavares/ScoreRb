module Scorerb
    module String
      def index_anycase(match)
        self.index(match.upcase) || self.index(match.downcase)  
      end    


	    def score(abrv, fuzzines = 0)

		    # If strings are equal return exact one
		    return 1.0 if self == abrv
		
		    total_char_score = 0
		    fuzzies = 1
		    bonus_starting_string = false
		    abrv_size = abrv.size
		    word_size = self.size
		    word = self
		    final_score = 0

		    (0..abrv_size-1).each do |i|
			    char = abrv[i]
			
			    index_in_string = word.index_anycase(char)

			    if index_in_string.nil?
				    if fuzzines > 0
					    fuzzies += 1 - fuzzines
					    next
				    else
					    return 0
				    end
			    else
				    char_score = 0.1
			    end

          #The current char is in the same position?
			    char_score += 0.1 if word[index_in_string] == char

          #If starting the word
			    if index_in_string == 0
				    char_score += 0.6
				    bonus_starting_string = i == 0
			    else
				    char_score += 0.8 if word[index_in_string - 1] == " "			
			    end

			    word = word.slice index_in_string + 1, word.size

			    total_char_score += char_score
		    end

		    abrv_score = total_char_score / abrv_size
		
		    #Reduce penalty for longer words
            final_score = ((abrv_score * (abrv_size/word_size)) + abrv_score) / 2

		    #Reduce using fuzzies
            final_score = final_score / fuzzies

		    final_score += 0.15 if bonus_starting_string && final_score <= 0.85
		    final_score
	    end
  end
end
