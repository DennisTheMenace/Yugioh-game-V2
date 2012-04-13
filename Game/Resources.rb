#!/usr/bin/env ruby

# Version 1.0

# Imports all the required files.


require 'Start.rb'		# Starts the game!
require 'Setup.rb'		# Sets up all the player variables before the game
require '../Classes/Lifepoints.rb'	# Lifepoint control
require '../Classes/Field.rb'		# Sets the field variables
require '../Functions/Draw.rb'		# Draw a card method
require '../Classes/Area.rb'        # Area controller class
require '../Resources/Decks/Deck.rb'		# Contains the information for your deck
require 'Initialisation.rb'	# Initialises all the needed components for the game to run based on the variables set by setup
require 'Phases.rb'		# Data for all of the phases
require '../Classes/Routines.rb'		# Routines which must be run every action to allow for recognising of conditons for card effects
require '../Functions/Playerset.rb'		# Defines the player variables so they can be used by methods
require '../Functions/Commands.rb'
require '../Functions/Spell.rb'		# Activate a spell card method
require '../Extra/Colourtext.rb'	# Provides the ability to used coloured text STATUS: not working INFO: need to implement an option for when to enable colour text depending on if you have ansi colour bla bla installed

#require 'Help.rb' 		# More help coming soon...



require '../Functions/Discard.rb'		# Discard a card method
require '../Functions/Summon.rb'		# Summon a monster method



#require 'Trap.rb'		# Set a trap method
#require 'List.rb'		# Handy command which lists all of a certain area(variable)
#require 'Battle.rb'		# Battle a monster method

#require 'Load.rb'		# Method for loading a savegame/scenario


require '../Functions/Close.rb'		# Method for closing down the game safely


#require 'Update.rb'
#require 'Trap.rb'		# Set and activate trap cards STATUS untested INFO: Early stages of implementation
#require 'Testing.rb'

