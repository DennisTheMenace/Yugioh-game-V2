#!/usr/bin/env ruby

# In Resources.rb? - Yes

#outcomes: 0 = win, 1 = loss, 2 = draw

def battle
    playerset('')
    puts "What monster do you want to use? [1,2,3,4,5]"
    card1 = @@monsterfield.selectcard
    puts "What monster do you want battle? [1,2,3,4,5]"
    card2 = @@emonsterfield.selectcard
    battle = card1[:atk] - card2[:atk]
    if battle > 0
        outcome = 0
    elsif battle < 0
        outcome = 1
    elsif battle == 0
        outcome - 2
    else
        puts "There has been an error."
    end
    results = ["You won the battle!", "You lost the battle =(", "The monsters drew even!"]
    puts results[outcome]

end
