#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Sets up variables based on who's turn it is.

def playerset(mode)
    if $activeplayer == 0
        @@name = $usr1
        @@ename = $usr2
        @@lp = $lp1
        @@elp = $lp2
        @@hand = $player1hand
        @@ehand = $player2hand
        @@deck = $player1deck
        @@edeck = $player2deck
        @@monsterfield = $monsterfield1
        @@emonsterfield = $monsterfield2
        @@spelltrapfield = $spelltrapfield1
        @@espelltrapfield = $spelltrapfield2
        @@graveyard = $player1graveyard
        @@egraveyard = $player2graveyard
        @@outofplay = $player1outofplay
        @@eoutofplay = $player2outofplay
    end
    if $activeplayer == 1
        @@name = $usr2
        @@ename = $usr1
        @@lp = $lp2
        @@elp = $lp1
        @@hand = $player2hand
        @@ehand = $player1hand
        @@deck = $player2deck
        @@edeck = $player1deck
        @@monsterfield = $monsterfield2
        @@emonsterfield = $monsterfield1
        @@spelltrapfield = $spelltrapfield2
        @@espelltrapfield = $spelltrapfield1
        @@graveyard = $player2graveyard
        @@egraveyard = $player1graveyard
        @@outofplay = $player2outofplay
        @@eoutofplay = $player1outofplay
    end
end
