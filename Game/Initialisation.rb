#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Run this function when initialising a game

# Actually... just run the 'start' function

def initialise(loadfile)

    # Initialise steps

    # Resize needed images
  
    if $testing == 1
        require_relative 'Testing.rb'
        require_relative '../Extra/Parser.rb'
    end
 
    # Initialise graphics if graphics mode is on
    #if $graphics == 1
        #require 'RMagick'
    require_relative '../Graphics/GraphicsHandler.rb'
        #graphicsinit
    #end
    # Load game
    if $loadgame == true
        loadgame(loadfile)
    end
  
end
