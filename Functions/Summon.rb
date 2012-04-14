#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Summons a monster.

# INSTRUCTIONS:



def summon
    playerset('unknown')
    
    summoncard = $player1hand.selectcard("monster")
    if summoncard[:level] <= 4
        $monsterfield1.addcard(0,summoncard)
        eval(summoncard[:effect])
        $player1hand.removecard(summoncard)
        puts "Monsterfield:"
        $monsterfield1.list
    elsif summoncard[:level] > 4
        puts "Tributes coming soon..."
    
    end
end
