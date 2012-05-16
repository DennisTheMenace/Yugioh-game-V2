#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Discard a card from your hand.

def discard(type) # Provide a string input of spell, monster, trap or all to determine the type of the card being discarded.
  
    playerset('unknown')                        # Sets variables
    discardcard = $player1hand.selectcard(type) # Select card from hand to discard; refer to Area.rb for more info.
    $player1graveyard.addcard(discardcard)      # Adds the card to the graveyard
    $player1hand.removecard(discardcard)        # Remove the card from the hand
end

