#!/usr/bin/env ruby

# In Resources.rb? - Yes

# The class which handles routines. Routines are actions which are performed when a certain event is made, such as: increasing lifepoints
# every standby phase.
$toremove = []
$todo = []
class RoutineController				# Creates the class
  @@routines = []				# Sets up the variable which stores all routines
  def self.routinecheck(event,includeall)			# Method for 
    puts event
    $debug.debuglog("routinecheck.called")
    $debug.debuglog(@@routines)
    $debug.debuglog("entering @@routines.each{}")
    
    @@routines.each {|routine|
        $debug.debuglog("Routine:")
        $debug.debuglog(routine)
        if routine[0] == 'all' and includeall == 1
    #puts event
            $debug.debuglog("event = all")
    #$debug.debuglog(routine[1])
            eval routine[1] 
        elsif routine[0] == event
            $debug.debuglog("event:")
            $debug.debuglog(event)
    #$debug.debuglog(routine[1])
            $debug.debuglog("action:")
            $debug.debuglog(routine[1])
            if routine[2] == 1
                $debug.debuglog("selfdestruct")
    #RoutineController.removeroutine(routine[0],routine[1])
                effect = routine[1]
                $debug.debuglog("evaling..")
                $todo.push(effect)
                event = routine[0]
                action = routine[1]
    
                toremove = routine
                $toremove.push(toremove)
               
            end
            
            $debug.debuglog("done")
            end
        
    
        
    }

    $debug.debuglog("end of .each")
    $debug.debuglog("$to-do:")
    $debug.debuglog($todo)
    $debug.debuglog("$toremove:")
    $debug.debuglog($toremove)
    $toremove.each { |toremove|
        RoutineController.removeroutine(toremove[0],toremove[1])
    }
$todo.each { |toremove|
    eval toremove
}
    $toremove = []
    $todo = []
    $debug.debuglog("routinecheck.end")
  end
    def self.addroutine(event,action,selfdestruct)
        @newroutine = [event,action,selfdestruct]
        @@routines.push(@newroutine)
    end
    def self.removeroutine(event,action)
        counter = 0
        @@routines.each { |routine|
            if routine[0] == event and routine[1] == action and counter == 0
                $debug.debuglog("removeroutine.matchfound")
               

                $debug.debuglog("delete routine:")
                $debug.debuglog(@@routines)
                @@routines.delete(routine)
                $debug.debuglog(@@routines)
                $debug.debuglog("deleting routine")
                counter = 1
            end
            
        }
        $debug.debuglog("end of removeroutine")
        
    end
end
def routinecheck(event,includeall)
    RoutineController.routinecheck(event,includeall)
end
