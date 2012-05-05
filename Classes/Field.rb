#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Class which stores field data.

# States: 0 = face-up attack, 1 = face-up defense , 2 = face-down defense , 3 = face-down spell/trap , 4 = face-up spell/trap 

class FieldController
  attr_accessor :space1, :space2, :space3, :space4, :space5, :allspaces
  def initialize					# Intialises the 6 variables which all instances of FieldController have:
    @space1 = [0,0,0] 					# spaces 1 - 5 and an array for holding all 5 spaces					
    @space2 = [0,0,0]
    @space3 = [0,0,0]
    @space4 = [0,0,0]
    @space5 = [0,0,0]
    @allspaces = [@space1,@space2,@space3,@space4,@space5]
  end
  def addcard(state,card)					# Method for adding a card to the specific field you call
    counter = 0
    @allspaces.each {|fieldspace|
    if fieldspace[0] == 0 and counter == 0
      fieldspace[0] = 1
      fieldspace[1] = state
      fieldspace[2] = card
      counter = 1
    end
    }
  end
  def removecard(card, dynamic)				# Method for removing a card from the specific field you call
    counter = 0
    if dynamic == false
      @allspaces.each {|fieldspace|
      if fieldspace[2] == card and counter == 0
          
          fieldspace[0] = 0
          fieldspace[1] = 0
          
          string = 'fieldremove_' + "#{fieldspace[2][:name]}"
          #puts string
          routinecheck(string)
          fieldspace[2] = 0
          counter = 1
          
      end
      }
    else
      fieldparse(dynamic,"lower")
    end
  
  end
  def list
    @allspaces.each {|fieldspace|
    if fieldspace[0] == 1
      puts fieldspace[2][:name]
    end
    }
  end
  def findcard(cardname)
    counter = 0
    @allspaces.each {|name|
    if name[2][:id] == cardname
      return name[2]
    end
    }
  end
  def search(para1,para2,para3)
    returndata = []
    @allspaces.each {|space|
      if space[0] == para1
        if space[1] == para2
            if para3 != false
                if space[2][:name] == para3
                    returndata.push(space)
                end
            else
                returndata.push(space[2])
            end      
        end
      end
    }
      return returndata
  end
    def updatespace(name,update)
        @allspaces.each {|space|
        if space[2][:name] == name
            
            $debug.debuglog(space[2][:effect])
            $debug.debuglog(update)
            eval(update)
            $debug.debuglog('space update completed')
            return
        end
        }
    end
    def selectcard
        selected = []
        @allspaces.each{|card| 
                if card[0] == 1
                    puts card[2][:name]
                    #puts card[2]
                    selected.push(card[2])
                end
        } 
        if selected.empty? == true
            puts "No cards can be selected."
            return
        end
        response = gets.to_i
        response -= 1
        return selected[response]
    end
    def find(string)
        card = fieldparse(string,false) 
        #puts "returning card from Field.find"
        return card
    end
end
