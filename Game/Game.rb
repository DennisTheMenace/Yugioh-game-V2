#!/usr/bin/env ruby

# Version 1.0

# Made by Joshua Rowe

require 'Resources.rb' # Imports "Resources.rb" which in turn imports all the other required files.

# Open the log
  
$file = File.new("log.txt", "w+")

start				# Runs start method which intialises everything needed including Field Controllers, get player's name, graphics etc

while $lp1.returnlp > 0		# If life points become 0 the game loop will close.
	activephase($activeplayer)
  	if $lp1.returnlp <= 0		# Lose condition: If your lifepoints reach 0
    	puts "You lose..."		# You lose... =(
    	puts "=("
    	sleep 1
    	close
  	end
  	# More end code coming soon.
end
