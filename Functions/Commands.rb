#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Basically, the valid input commands list


def command(player,user_response)
    playerset($testing)
    #if $testingmove != true
    #  response = $testingmove
    #end
    print "Enter Command: "
    if $debugplaycounter == $debugplay.size
       close 
    end
    if $debugplay == 1
        response = $debugcommands[$debugplaycounter]
        $debugplaycounter += 1
        response = response.to_s
        response = response.chomp
        puts response
    else
        response = gets.chomp
    end
    
    
    if response == "smn" or response == "Summon"	# Summon a monster
      summon
    elsif response == "flipsmn" or response == "flipsummon"
        flipsummon
    elsif response == "spl"
      spell		
    elsif response == "mf"
        puts 'Monster field:'
        @@monsterfield.list(false,["name"])
    elsif response == "mfi" or response == "mfi -d"
        
        if response == "mfi -d"
            array = ["id", "name", "type", "desc", "atk", "def", "level", "effect", "file"]
        else
            array = ["name","level","atk","def"]
        end
        @@monsterfield.list(true,array)
    elsif response == "gv"		# Lists all cards in your graveyard
      puts 'Graveyard:'
      @@graveyard.list
    elsif response == "rp"
        puts "Removed from play:"
        @@outofplay.list
    elsif response == "lp"		# Display your current lifepoints
      playerset($testing)
      puts @@lp.returnlp
    elsif response == "hc"
      puts "You have #{@@hand.size} cards in your hand"
    elsif response == "hand"
      @@hand.list
    #elsif response == "update"			# Needs to be implemented still. Will allow in-game updating of database or files
    #  require_relative 'Testing.rb'
    elsif response == "trp"			# Set trap card
      settrap($testing)
    elsif response == "settrap" 		# Alternate to trp
      settrap($testing)
    elsif response == "atrp"			# Activate trap card
      activatetrap
    elsif response == "btl" and $testing == 1	# Monster battle method
      battle
    elsif response == "exit"		# Allows exiting and closes all open files.
      close
    elsif response == "turn"	# Outputs the current players turn
      puts $activeplayer
    elsif response == "help"	# The word 'Help' says it all
      help
    elsif response == "settings" and $testing == 1  # Doesn't work, crashes game
      begin
      $graphics = 0
      $screen.close
      rescue
        puts "Failed"
      
      end
    # Testing commands:
    elsif response == "rpt" and $testing == 1 # Report method yet to be implemented
      puts "Not ready yet".yellow
    elsif response == "parse" and $testing == 1 
      #puts "parsing...".cyan
      puts "parsing..."
      parse(gets.to_s)
    elsif response == "eval" and $testing == 1
      
      puts "Input password..."
      response = gets.chomp
      if response == "asd"
        #puts "Access Granted".green
        cputs "Access Granted", 'green'
      else
        cputs "Access Denied", 'red'
        return
      end
      puts "Type what you want evaluated"
      abc = gets

      puts "Proccessing..."

      cputs "Proccessed!", "green"
      eval(abc)
    
    elsif response == "test" and $testing == 1
        puts "Used for testing anything at all"
        
        @@graveyard.rmcardname("Dark Magician")
        $debug.test
        
    elsif response == "options" 
      puts "This function is in development"
      puts $config_options
    elsif response == "decklist" # Outputs a list of names of all your cards in your deck
      puts $namelist
    elsif response == "save"
        save
    else
      cputs("This does not compute",'yellow')
    
    end
end
