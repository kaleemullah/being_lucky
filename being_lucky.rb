require_relative 'die'

class BeingLucky
  attr_reader :dice
  
  def initialize(dice)
    @dice = dice
  end

  def score
    score = 0

    (1..6).each do |num|
      count = dice.count(num)
      # calculate each die score and add it
      score += Die.new(num, count).score
    end

    score
  end 
end