class Die
  attr_reader :num
  attr_reader :count

  def initialize(num, count)
    @num = num
    @count = count
  end

  def score
    if count >= 3
      # Sum triplet score of a die with single/non-triplent scores(as many times it appears)
      # Lets say 1 appears 5 times then: 1000(triplet score of 1) + (2 * 100(single score of 1))
      triplet_score + non_triplet_score(count - 3)
    else
      non_triplet_score
    end
  end
  
  private
    def triplet_score
      num == 1 ? 1000 : num * 100
    end

    def non_triplet_score(non_triplet_count = count)
      if num == 1
        non_triplet_count * 100
      elsif num == 5
        non_triplet_count * 50
      else
        0
      end
    end
end