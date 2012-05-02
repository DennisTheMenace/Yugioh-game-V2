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
        puts summoncard[:effect]
        eval(summoncard[:effect])
        @@hand.removecard(summoncard)
        puts "Monsterfield:"
        @@monsterfield.list
    elsif summoncard[:level] > 4
        puts "You must tribute a monster to summon this monster."
        puts "Would you like to continue? [y/n]"
        response1 = gets.chomp
        if response1 == 'y'
            puts "You must select a monster to tribute. [1,2,3,4,5]"
            tribute = @@monsterfield.selectcard
            @@monsterfield.removecard(tribute)
            @@monsterfield.addcard(0,summoncard)
            graphicsupdate('')
            eval(summoncard[:effect])
            @@hand.removecard(summoncard)
            puts "Monsterfield:"
            @@monsterfield.list
        elsif response1 == 'n'
            puts "Returning..."
            return
        end
    end
end
