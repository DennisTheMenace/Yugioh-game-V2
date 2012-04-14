#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Set and activate a trap card


$trapindicator = [0,0,0,0,0]
def settrap(mode)
    
    
    playerset($testing)
    
    trapcard = @@hand.selectcard('trap')
    
    @@spelltrapfield.addcard(3,trapcard)
    @@hand.removecard(trapcard)
end

def activatetrap		# Being fully rewritten for v1.3
    trapchoice = []
    fieldtraps = @@spelltrapfield.search(1,3,false)
    fieldtraps.each {|trap|
        puts trap[:name]
        trapchoice.push(trap)
    }
    puts = "Which trap would you like to activate? [1,2,3,4,50"
    response = gets.to_i
    response -= 1
    eval(fieldtraps[response][:effect])
    @@spelltrapfield.removecard(fieldtraps[response])

end
