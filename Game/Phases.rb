#!/usr/bin/env ruby

# In Resources.rb? - Yes

# *Note* Keep until version 1.2, then delete as it's 

def activephase(currentplayer)
    if $activephase == 0 and $debugplay != 1
        $player1hand.addcard($deck1[11])
        $player1hand.addcard($deck1[17])
        if $loadgame != true	# If your loading a game it doesn't draw 5 cards for player 1 and player 2 if your in 2 player mode
            5.times do draw(0,"yes", false) end
            if $playermode == 1
                5.times do draw(1,"yes", false) end
            end
        end 
    end
  if $activephase == 1
    
    routinecheck('drawphase-start',1)
    #print $activeplayer
    #puts "#{$player1area)}'s turn"
    playerset($testing)
    #puts @@name
    puts "#{@@name}'s turn"
    puts "Draw Phase"
    routinecheck('drawphase_draw',1)
    draw($activeplayer,"yes", false)
    
    
    routinecheck('drawphase_end',1)
    
  end
  if $activephase == 2
    if $testing == 0
      puts "Standby phase"
    end
    routinecheck('standbyphase_start',1)

  end
  while $activephase == 3
    playerset($testing)
    puts "Main phase 1"
    
    routinecheck('mainphase_start',1)  
    command($activeplayer,true)
    
    puts "End phase? [Y,y]"
      if $debugplaycounter == $debugplay.size
          close 
      end  
    if $debugplay == 1
        response = $debugcommands[$debugplaycounter]
        $debugplaycounter += 1
    else
        response = gets.chomp
    end 
    case response
    when /[Y,y]/
      $activephase = 4
      
      routinecheck('mainphase_end',1)
    end
    
  end
  if $activephase == 4
    puts "Main phase 2"
    routinecheck('mainphase2_start',1)
  end
  if $activephase == 5
     puts "Current player is #{$activeplayer}"
     puts $activeplayer
     puts currentplayer
     playerset($testing)
     puts "End phase"
     routinecheck('endphase_start',1)
          if @@hand.allcards.size > 6
         discard('all')
     
     end
     puts "End turn?"
     
     response = gets.chomp
     $turncount += 1
     $debug.debuglog($activeplayer)
     $file.puts("#{@@name} Ended turn #{$turncount}")
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
    $debug.debuglog('swapping player')
    
    if $activeplayer == 1
        $activeplayer = 0
    else
        $activeplayer = 1
    end
    
   
    $activephase = 1
    puts $activeplayer
    end
  else
    if $activephase > 5 # After "End phase" returns the active phase back to draw phase.
    
    
    $activephase = 1
  
    end
    puts $activeplayer
  
  end
end
