#!/usr/bin/env ruby

# In Resources.rb? - Yes

# INSTRUCTIONS:

class Lifepoints
  attr_accessor :lifepoints
  def initialize
    @lifepoints = 8000
  end
  def increaselp(amount)
    @lifepoints += amount
  end
  def decreaselp(amount)
    @lifepoints -= amount
  end
  def returnlp
    return @lifepoints
  end
end
