#!/usr/bin/env ruby

# Version 1.3

# Imports all the required files.


require_relative 'Start.rb'		# Starts the game!
require_relative 'Setup.rb'		# Sets up all the player variables before the game
require_relative '../Classes/Lifepoints.rb'	# Lifepoint control
require_relative '../Classes/Field.rb'		# Sets the field variables
require_relative '../Functions/Draw.rb'		# Draw a card method
require_relative '../Classes/Area.rb'        # Area controller class
require_relative '../Resources/Decks/Deck.rb'		# Contains the information for your deck
require_relative 'Initialisation.rb'	# Initialises all the needed components for the game to run based on the variables set by setup
require_relative 'Phases.rb'		# Data for all of the phases
require_relative '../Classes/Routines.rb'		# Routines which must be run every action to allow for recognising of conditons for card effects
require_relative '../Functions/Playerset.rb'		# Defines the player variables so they can be used by methods
require_relative '../Functions/Commands.rb'
require_relative '../Functions/Spell.rb'		# Activate a spell card method
require_relative '../Extra/Colourtext.rb'	# Provides the ability to used coloured text STATUS: not working INFO: need to implement an option for when to enable colour text depending on if you have ansi colour bla bla installed

require_relative '../Functions/Help.rb' 		# More help coming soon...

require_relative '../Extra/Parser.rb'        # Will start work on this again soon

require_relative '../Functions/Discard.rb'		# Discard a card method
require_relative '../Functions/Summon.rb'		# Summon a monster method



require_relative '../Functions/Trap.rb'		# Set a trap method

require_relative '../Functions/Battle.rb'		# Battle a monster method

require_relative '../Functions/Load.rb'		# Method for loading a savegame/scenario


require_relative '../Functions/Close.rb'		# Method for closing down the game safely


#require 'Update.rb'
#require 'Testing.rb'

