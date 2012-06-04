#!/usr/bin/env ruby

class AreaController
    attr_accessor :allcards
    def initialize								
        @allcards = []
    end
    def addcard(card)     # Method for adding a card to this specific area
        areasize = @allcards.size
        @allcards.push(card)
       
    end
    def removecard(card)
        @allcards.delete(card)
    end
    def list
        @allcards.each {|card|
            
                puts card[:name]
            
        }
    end
    def selectcard(type)
        if type == "all"
            alloftype = []
            @allcards.each {|card|
                puts card[:name]
                alloftype.push(card)
            }
        else
            alloftype = []
            @allcards.each{|card| 
                if card[:type] == type
                    puts card[:name]
                    alloftype.push(card)
                end
                } 
        end
        if $debugplay == 1
            response = $debugcommands[$debugplaycounter]
            $debugplaycounter += 1
            response = response.to_i
            puts response
        else
            response = gets.to_i
            response -= 1
        end
        
        return alloftype[response]
    end
    def randomcard
        draw = rand(@allcards.size)
        returncard = @allcards[draw]
        return returncard
        
    end
    def findcards(cardname)
        counter = 0
        @allcards.each {|name|
            if name[:name] == cardname
                return name
            end
        }
    end
    def rmcardname(name)
        counter = 0
        @allcards.each{|card| 
            if card[:name] == name and counter == 0
                
                @allcards.delete(card)
                return
                
   
            end
        } 
    end
end

