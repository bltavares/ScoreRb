module Scorerb
  module Array
    OPTIONS = {:fuzz => 0, :to_S => false}
    
    def score(string, options = {})
      return nil if empty?
      optional = OPTIONS.merge(options)
      matches = {}
      each do |against|
        against = against.to_s if optional[:to_s]
        current_score = { against => string.score(against, optional[:fuzz]) } 
        matches.update(current_score)
      end
      matches
    end

  end
end
