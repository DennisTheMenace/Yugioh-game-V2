#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Summons a monster.

# INSTRUCTIONS:



def summon
    playerset('unknown')                                # Sets variables
    summoncard = @@hand.selectcard("monster")           # Returns the card data for whatever card you choose which is handled within the class.
    if summoncard[:level] <= 4                          # Summon procedure if the monster is under level 4
        puts "Face-up attack mode or face-down defense mode. [1/2]"
        # Defines what mode to summon it in
        if $debugplay == 1                              # Will use a predetermined response value if $debugplay is enabled
            response1 = $debugcommands[$debugplaycounter]
            $debugplaycounter += 1              # Increases a global counter so that the next time you get a command from $debugcommands it's the next one in line.
            response1 = response1.to_s
            response1 = response1.chomp
            #puts response1
        else
            response1 = gets.chomp                      # Asks user what mode he wants to summon the monster in
        end
        if response1 == '1'
            @@monsterfield.addcard(0,summoncard)
        elsif response1 == '2'
            @@monsterfield.addcard(2,summoncard)
        else
            puts "Wrong answer... mofo"
            puts "Returning..."
            return
        end
        graphicsupdate('')                              # If graphics are turned on then it will update the screen.
        eval(summoncard[:effect])
        @@hand.removecard(summoncard)
        puts "Monsterfield:"
        array = ["name"]
        @@monsterfield.list(false,array)
    elsif summoncard[:level] > 4
        puts "You must tribute a monster to summon this monster."
        puts "Would you like to continue? [y/n]"
        response2 = gets.chomp
        if response2 == 'y'
            puts "You must select a monster to tribute. [1,2,3,4,5]"
            tribute = @@monsterfield.selectcard
            @@monsterfield.removecard(tribute)
            @@monsterfield.addcard(0,summoncard)
            graphicsupdate('')
            eval(summoncard[:effect])
            @@hand.removecard(summoncard)
            puts "Monsterfield:"
            @@monsterfield.list(false,(:name))
        elsif response2 == 'n'
            puts "Returning..."
            return
        end
        
    end
end

def flipsummon                                      # Function for flip-summoning a monster
    playerset('waddup')                             # Sets variables
    facedownmonsters = @@monsterfield.search(1,2,false) # Returns an array of all face-down defense monsters. Parameters: (space vacancy, mode, name)
                                                        # 1. Space vacancy: 1=occupied, 0=vacant  2. Mode: refer to Field.rb  3. name of specific card or false if not needed
    puts facedownmonsters[0][:name]
    puts "Which monster do you want to flip summon? [1,2,3,4,5]"
    response = gets.to_i
    response -= 1
    card = @@monsterfield.findcard(facedownmonsters[response][:name])
    if card[:extratype] != "flip-effect"
        puts "This is not a flip-effect monster card"
        return
        
    end
    puts card[:effect]
    eval card[:effect]
    
    puts "Your monster is now in face-up defense mode"
    @@monsterfield.updatespace(card[:name],"space[1] = 1")
    
end