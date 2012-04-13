#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Set and activate a trap card


$trapindicator = [0,0,0,0,0]
def settrap(mode)
    
    
    playerset($testing)
    
    trapcard = $player1hand.selectcard('trap')
    
    $spelltrapfield1.addcard(3,trapcard)
    $player1hand.removecard(trapcard)
end

def activatetrap		# Being fully rewritten for v1.3
    trapchoice = []
    fieldtraps = $spelltrapfield1.search(1,3,false)
    fieldtraps.each {|trap|
        puts trap[:name]
        trapchoice.push(trap)
    }
    puts = "Which trap would you like to activate? [1,2,3,4,50"
    response = gets.to_i
    response -= 1
    eval(fieldtraps[response][:effect])
    $spelltrapfield1.removecard(fieldtraps[response])

end
