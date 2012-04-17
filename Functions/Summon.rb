#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Summons a monster.

# INSTRUCTIONS:



def summon
    playerset('unknown')
    
    summoncard = @@hand.selectcard("monster")
    if summoncard[:level] <= 4
        @@monsterfield.addcard(0,summoncard)
        graphicsupdate('')
        eval(summoncard[:effect])
        @@hand.removecard(summoncard)
        puts "Monsterfield:"
        @@monsterfield.list
    elsif summoncard[:level] > 4
        puts "Tributes coming soon..."
    
    end
end
