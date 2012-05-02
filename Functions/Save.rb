#!/usr/bin/env ruby

# In Resources.rb? - No

# Load a game/scenario

def save

    playerset('')
    $savefile = File.new("save.txt", "w")
    $savefile.puts(@@hand, @@ehand)
  

end
