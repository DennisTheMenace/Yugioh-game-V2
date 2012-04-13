#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Discard a card from your hand.

def discard(type) # Provide a string input of spell, monster, trap or all to determine the type of the card being discarded.
  
    playerset('unknown')
    discardcard = $player1hand.selectcard("all")
    $player1graveyard.addcard(discardcard)
    $player1hand.removecard(discardcard)
end

