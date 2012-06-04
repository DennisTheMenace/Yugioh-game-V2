#!/usr/bin/env ruby

# 1. Draw Phase, 2. Standby Phase, 3. Main Phase, 4. Mainphase 2, 5. End Phase

class Phases
  attr_accessor :current_phase, :current_player
  def initialize
    @current_player = 0
    @current_phase = 0
    @phases = ["Draw Phase", "Standby Phase", "Main Phase", "Main Phase 2", "End Phase"]
    @phases_routine = ["drawphase","standbyphase","mainphase","mainphase2","endphase"]
  end
  def nextphase
    if @current_phase == 5
       @current_phase = 1
       if @current_player == 1
         @current_player = 0
       else
         @current_player = 1
       end
    else
      @current_phase += 1
    end
  end
  def do_phase
    playerset($testing)
    puts @phases[@current_phase - 1]
    routinecheck("#{@phases_routine[@current_phase - 1]}-start",1)
    if @current_phase == 1
      phase1
    elsif @current_phase == 2
      phase2
    elsif @current_phase == 3
      phase3
    elsif @current_phase == 4
      phase4
    elsif @current_phase == 5
      phase5
    end
    routinecheck("#{@phases_routine[@current_phase - 1]}-end",1)
  end
  def phase1
    #puts @current_player
    draw(@current_player,"yes", false)
    routinecheck('drawphase_draw',1)
  end
  def phase2
    
  end
  def phase3
    phase = true
    while phase == true
      $commands.input(1)
    
      puts "End phase? [Y,y]"
        if $debugplaycounter == $debugplay.size
          close 
        end  
      if $debugplay == 1
        response = $debugcommands[$debugplaycounter]
        $debugplaycounter += 1
      else
        response = gets.chomp
      end 
      case response
      when /[Y,y]/
        phase = false
      end
    end
  end
  def phase4
    
  end
  def phase5
     if @@hand.allcards.size > 6
       discard('all')
     end
     puts "End turn?"
     
     response = gets.chomp
     $turncount += 1
     $debug.debuglog($activeplayer)
     $file.puts("#{@@name} Ended turn #{$turncount}")
     puts "Ended turn"
  end
end