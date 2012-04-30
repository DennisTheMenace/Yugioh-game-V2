#!/usr/bin/env ruby

# In Resources.rb? - Yes

def activephase(currentplayer)
    if $activephase == 0
        if $loadgame != true	# If your loading a game it doesn't draw 5 cards for player 1 and player 2 if your in 2 player mode
            5.times do draw(0,"yes", false) end
            if $playermode == 1
                5.times do draw(1,"yes", false) end
            end
        end 
    end
  if $activephase == 1
    
    routinecheck('drawphase-start')
    #print $activeplayer
    #puts "#{$player1area)}'s turn"
    playerset($testing)
    #puts @@name
    puts "#{@@name}'s turn"
    puts "Draw Phase"
    routinecheck('drawphase-draw')
    draw($activeplayer,"yes", false)
    
    
    routinecheck('drawphase-end')
    
  end
  if $activephase == 2
    if $testing == 0
      puts "Standby phase"
    end
    routinecheck('standbyphase-start')

  end
  while $activephase == 3
    playerset($testing)
    puts "Main phase 1"
    
    routinecheck('mainphase-start')  
    command($activeplayer,true)
    
    puts "End phase? [Y,y]"
    response = gets.chomp
    case response
    when /[Y,y]/
      $activephase = 4
      
      routinecheck('mainphase-end')
    end
    
  end
  if $activephase == 4
    puts "Main phase 2"
    routinecheck('mainphase2-start')
  end
  if $activephase == 5
     puts "Current player is #{$activeplayer}"
     puts $activeplayer
     puts currentplayer
     playerset($testing)
     puts "End phase"
     routinecheck('endphase-start')
     
     if @@hand.size > 6
         discard('all')
     
     end
     puts "End turn?"
     
     response = gets.chomp
     $turncount += 1

     $file.puts("#{$usr1} Ended turn #{$turncount}")
     puts "Ended turn"
  end
    
  if $player1deck.allcards.size == 0	# If your deck becomes 0 at the end of your turn you lose.
    $lp = 0
    puts "You ran out of cards to draw"
    puts "Game over!"
    puts $turncount
    close
  end
    
  $activephase += 1
  if $playermode == 1
    if $activephase > 5 # After "End phase" returns the active phase back to draw phase.
    $activeplayer -= 1 unless $activeplayer == 0
    $activeplayer += 1 unless $activeplayer == 1
    
    $activephase = 1
    end
  else
    if $activephase > 5 # After "End phase" returns the active phase back to draw phase.
    
    
    $activephase = 1
  
    end
    puts $activeplayer
  
  end
end
