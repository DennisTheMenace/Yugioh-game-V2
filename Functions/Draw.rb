#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Method used for drawing a card.

# INSTRUCTIONS:

# To draw a card use this command template - 'draw(player, output, card)'
# Replace player with 0 or 1 to determine which player is drawing. 0 = player 1 and 1 = player 2
# Replace outout with 'yes' or 'no' depending on if you want it to output the card that you drew
# Replace card with false if you want to draw a random card otherwise type the name of the card you want to draw in quote marks

def draw(player,output,card)
    playerset('')
    if player == 0
        draw = @@deck.randomcard
        puts "You have drawn #{draw[:name]}"
        @@hand.addcard(draw)
        @@deck.removecard(draw)
    elsif player == 1
        draw = @@edeck.randomcard
        puts "You have drawn #{draw[:name]}"
        @@ehand.addcard(draw)
        @@edeck.removecard(draw)
    end
end
