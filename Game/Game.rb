#!/usr/bin/env ruby

# Version 1.0

# Made by Joshua Rowe

require_relative 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.

# Open the log
  
$file = File.new("log.txt", "w+")

start				# Runs start method which intialises everything needed including Field Controllers, get player's name, graphics etc
phases = Phases.new
# Gotta make this loop 2-player friendly at some point

while $lp1.returnlp > 0		# If life points become 0 the game loop will close.
  
	phases.nextphase
	phases.do_phase
  	if $lp1.returnlp <= 0		# Lose condition: If your lifepoints reach 0
    	puts "You lose..."		# You lose... =(
    	puts "=("
    	sleep 1
    	close
  	end
  	# More end code coming soon.
end
