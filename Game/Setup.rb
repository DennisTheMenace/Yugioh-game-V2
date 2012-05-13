#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Sets up all the variables

def setup
    
    
    $testing = 1		# Sets it to testing mode if 1 or not testing mode if 0
    $graphics = 0 		# Sets if graphics are enabled if 1 or disabled if 0
    $playermode = 1	# Sets the game to 1 player if 0 or 2 player if 1 
        # 2 player mode is so buggy... In other words, don't play the game in 2 player mode
        # I'll hopefully address this in version 1.4

    $loadgame = false	# Specifies of your loading a game/save/scenario
			# Set to false for now as it isn't stable yet
    $loadpointer = ""
    $colour = 0		# Disable/Enable coloured text if 0/1 respectively

    $version = 1.0	# Game version

    if $testing == 1	# Uses some premade names if your in testing mode
        $usr1 = 'Joshua'
        $usr2 = 'Max'
    else			# For a proper game it prompts you for both players names
        puts "Player 1 name: "
        $usr1 = gets.chomp
        puts "Player 2 name: "
        $usr2 = gets.chomp
    end
    
    # Lifepoints:

    $lp1 = Lifepoints.new 		# Sets Life points controller class to $lp1 for player 1 - Reference to Lifepoints.rb
    $lp2 = Lifepoints.new 		# Sets Life points controller class to $lp2 for player 2 - Reference to Lifepoints.rb
    
    # Area Variables
    
    $player1area = [$hand1,$deck1,$graveyard1,$usr1,$lp1,$outofplay1] # Defines all the areas for Player 1 & 2
    $player2area = [$hand2,$deck2,$graveyard2,$usr2,$lp2,$outofplay2]
    $activeplayer = 0
    $monsterfield1 = FieldController.new		# Creates the class instance for player 1's monster and spell/trap fields
    $spelltrapfield1 = FieldController.new
    $player1graveyard = AreaController.new
    $player1hand = AreaController.new
    $player1deck = AreaController.new
    $monsterfield2 = FieldController.new		# Creates the class instance for player 1's monster and spell/trap fields
    $spelltrapfield2 = FieldController.new
    $player2graveyard = AreaController.new
    $player2hand = AreaController.new
    $player2deck = AreaController.new
    $player1outofplay = AreaController.new
    $player2outofplay = AreaController.new
    $deck1.each{|card| $player1deck.addcard(card)}
    $deck1.each{|card| $player2deck.addcard(card)}

    if $playermode == 1				# Creates the class instance for player 2's monster and spell/trap fields if 2 player is enabled
        $monsterfield2 = FieldController.new
        $spelltrapfield2 = FieldController.new
    end
    
    $turncount = 0
    $activephase = 0
    
    
end
