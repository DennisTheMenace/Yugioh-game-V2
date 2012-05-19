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
        specific = @@deck.findcards('Dark Magician Girl')
        @@hand.addcard(specific)
    end
    def test
        $monsterfield1.find("lowest atk")
    end
    def debugplay
        draw($activeplayer, 'yes', @@deck.findcards("Dark Magician Girl"))
        draw($activeplayer, 'yes', @@deck.findcards("Dark Core"))
        $debugcommands = []
        IO.foreach "debug.txt" do |line|
            $debugcommands.push(line)
            
        end
        $debugplaycounter = 0
    end
end
$debug = Debugger.new
$debug.drawcard('test')
card = @@deck.findcards("Dark Magician")
@@graveyard.addcard(card)