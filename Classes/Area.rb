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
            if card[0] == 1
                puts card[2][:name]
            end
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
        
        response = gets.to_i
        response -= 1
        return alloftype[response]
    end
    def randomcard
        draw = rand(@allcards.size)
        returncard = @allcards[draw]
        return returncard
        
    end
end

