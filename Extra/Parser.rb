#!/usr/bin/env ruby

# In Resources.rb? - No

# A card effect parser

# Notes: - Put a space in front of a . (full stop)
#        - everything is turned into lowercase so far, may add extra parameter to control this.

def is_number?(i)
  true if Float(i) rescue false
end
def nextword?(location)
    
end


def parse(string)
  #string = string.to_s
  string = string.downcase
  array = string.split(/ /)
  
  #puts array
  array.each {|x|

  # Draw

  #puts x
  #puts "Checking if it is == 'draw'"
  if x == 'draw'
    #puts "Equals draw"
    #sleep 0.4
    b = array.index x
    #puts b
    a = b + 1
    if is_number?(array[a]) == true
      
      
      puts "true"
      array[a] = array[a].to_i
      
      array[a].times do draw($activeplayer,'yes', false) end
    end
  end

  # Discard
  
  if x == 'discard'
    b = array.index x
    a = b + 1
    if is_number?(array[a]) == true
      c = a + 1
      puts "The next word is..."
      puts array[c]
      if array[c] == "card"
        puts "type = all"
        type = 'all'
      elsif array[c] == 'monster'
        type = 'monster'
      elsif array[c] == 'spell'
        type = 'spell'
      elsif array[c] == 'trap'
        type = 'trap'
      end
      array[a] = array[a].to_i
      #puts type
      type = 'all'
      array[a].times do discard(type) end
    end



  end

  # Destroy

  if x == 'destroy'
    b = array.index x
    a = b + 1
    if is_number?(array[a]) == true
      # More to come...



    end
  end

  
}
  
end


# For use when providing parameters to Field

def fieldparse(string,whatcase)
    
    string = string.downcase
    array = string.split(/ /)
    @lowest = 10000
    array.each {|x|
    if x == "lowest"
        location = array.index x
        nextword = location + 1
        
        if array[nextword] == "atk" or "def"
            para = "#{array[nextword]}"
        elsif array[nextword] == "attack"
            para = "atk"
        elsif array[nextword] == "def" or "defense" or "defence"
            para = "def"
        end
        #puts para
        @lowest = { "atk" => 10000,
            "def" => 10000,
        }
        cards = @@monsterfield.search(1,0/1,false)
        #puts "cards:"
        #puts cards
        #puts "Finished cards"
        cards.each {|card|
            #puts card.type
            #puts card[para]
            #puts @lowest
            @lowest = card if card[para] < @lowest[para] 
        }
        
    end
    }
    #puts "returning card from parser..."
    return @lowest
end

