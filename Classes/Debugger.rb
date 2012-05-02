#!/usr/bin/env ruby

# In Resources.rb? - No

class Debugger
    def initialize
        $log2 = File.new("log2.txt", "w+")
    end
    def debuglog(input)
        
        $log2.puts(input)
        
    end
    def drawcard(name)
        playerset('')
        specific = @@deck.findcard('Fortune Lady Water')
        @@hand.addcard(specific)
    end
    def test
        puts $monsterfield1.space1[2][:atk]
    end
end
$debug = Debugger.new
$debug.drawcard('test')