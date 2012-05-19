#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Testing deck.

# If you wish to add a card to the deck follow these steps:

# 1. Add the hash to the current list of cards. You must include these keys - id, name, type, atk, def and level (monsters only) and effect (for spells and traps so far, they can be left blank) 
# 2. Add the hash to the $deck1 and $deck2 variables after the last one.
# 3. Add the name of the card to the namelist variable

decktitle = "Testing Deck"
Card = Struct.new(:id, :name, :type, :extratype, :desc, :atk, :def, :level, :effect, :file)
celticguardian = Card.new(1, "Celtic Guardian", "monster","", "An elf who learned to wield a sword, he baffles enemies with lightning-swift attacks.", 1400, 1200, 4, "", "../Resources/Images/CelticGuardian.jpg")
#Celtic Guardian STATUS: working
card2 = Card.new(2, "Pot of Greed", "spell","", "Draw 2 card from your deck", nil, nil, nil, "2.times do draw($activeplayer,'yes', false) end", "../Resources/Images/PotofGreed.jpg")
#Pot of Greed STATUS: working
card3 = Card.new(3, "Trap Hole", "trap","", "Activate only when your opponent Normal Summons or Flip Summons a monster with 1000 or more ATK. Destroy that monster.", nil, nil, nil, "", "../Resources/Images/TrapHole.jpg")
#Trap Hole STATUS: not working INFO: 
card4 = Card.new(4,"Spike Seadra", "monster","", "Using the spikes sprouting from its body, this creature stabs its opponents and floods them with electricity.", 1600, 1300, 5,"", "../Resources/Images/SpikeSeadra.jpg")
#Spike Seadra STATUS: working
card5 = Card.new(5, "Lightning Vortex","spell","","Discard 1 card from your hand an destroy all monster on your opponents side of the field", nil,nil,nil,  "", "../Resources/Images/LightningVortex.jpg")
#Lightning Vortex STATUS: working
card6 = Card.new(6, "Giant Soldier of Stone", "monster","", "A giant warrior made of stone. A punch from this creature has earth-shaking results.", 1300, 2000, 3, "", "../Resources/Images/GiantSoldierofStone.jpg")
#Giant Soldier of Stone STATUS: working
card7 = Card.new(7, "Monster Reborn", "spell","normal", "Special Summon 1 monster from either player's Graveyard to your side of the field.", nil,nil,nil, "", "../Resources/Images/MonsterReborn.jpg")
#Monster Reborn  STATUS: untested
card8 = Card.new(8, "Obnoxious Celtic Guard", "monster","", "This card cannot be destroyed by battle with a monster that has 1900 or more ATK.", 1400, 1200, 4, "", "../Resources/Images/ObnoxiousCelticGuardian.jpg")
#Obnoxious Celtic Guardian STATUS: working
card9 = Card.new(9, "Summoned Skull", "monster","", "A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force.", 2500, 1200, 6, "", "../Resources/Images/SummonedSkull.jpg")
#Summoned Skull STATUS: working
card10 = Card.new(10, "Dark Magician", "monster","","The ultimate wizard in terms of attack and defense.",2500, 2100, 7, "", "../Resources/Images/DarkMagician.jpg")
#Dark Magician STATUS: working
card11 = Card.new(11, "Hand Destruction", "spell","", "Both players discard 2 cards to the graveyard then draw 2 cards.",nil,nil,nil,
"2.times do discard('all') end
2.times do draw($activeplayer,'yes', false) end","../Resources/Images/HandDestruction.png")

card12 = Card.new(12, "Compulsory Evacuation Device","trap","", "Return 1 monster on the field to it's owner's hand.",nil,nil,nil, 'puts "Not implemented yet"')
#Compulsory Evacuation Device STATUS: not working
$fevent1 = "standbyphase_start"
$faction1 = "@@monsterfield.updatespace('Fortune Lady Water','space[2][:level] += 1')"
$fevent2 = "all"
$faction2 = "@@monsterfield.updatespace('Fortune Lady Water','space[2][:atk] = space[2][:level] * 300')"
$fevent3 = "all"
$faction3 = "@@monsterfield.updatespace('Fortune Lady Water','space[2][:def] = space[2][:level] * 300')"
$fevent4 = "fieldremove_Fortune Lady Water"
$faction4 = "RoutineController.removeroutine($fevent1,$faction1)"
$fevent5 = "fieldremove_Fortune Lady Water"
$faction5 = "RoutineController.removeroutine($fevent2,$faction2)"
$fevent6 = "fieldremove_Fortune Lady Water"
$faction6 = "RoutineController.removeroutine($fevent3,$faction3)"
card13 = Card.new(13, "Fortune Lady Water", "monster","", "This card's ATK and DEF are equal to its Level x 300 . During each of your Standby Phases , increase the Level of this card by 1 (max 12) . When this card is Special Summoned while you control a face-up Fortune Lady' monster except 'Fortune Lady Water', draw 2 cards .", 0, 0, 4, "RoutineController.addroutine($fevent1, $faction1,0)
    RoutineController.addroutine($fevent2,$faction2,0)
    RoutineController.addroutine($fevent3,$faction3,0)
    RoutineController.addroutine($fevent6,$faction6,1)
    RoutineController.addroutine($fevent5,$faction5,1)
    RoutineController.addroutine($fevent4,$faction4,1)
          
          
                  ", "../Resources/Images/FortuneLadyWater.jpg")
#Fortune Lady Water STATUS: semi-working INFO: Mostly working, level and atk+def modifiers are working, other effect isn't yet

card14 = Card.new(14,"Sakuretsu Armor", "trap","", "Activate only when your opponent declares an attack . Destroy the attacking monster .", nil,nil,nil, 'puts "Not implemented yet"',"../Resources/Images/SakuretsuArmor.png")
#Sakuretsu Armor STATUS: not working INFO: Trap cards haven't been implemented yet
card15 = Card.new(15, "", "spell","", "",nil,nil,nil, "",  "")
# No card defined yet
card16 = Card.new(16, "Mythical Beast Cerberus", "monster","","Each time a Spell Card is activated, place 1 Spell Counter on this card. This card gains 500 ATK for each Spell Counter on it. If this card attacks or is attacked, remove all Spell Counters from it at the end of the Battle Phase.", 1400, 1400,  4, "", "../Resources/Images/MythicalBeastCerberus.jpg")
card17 = Card.new(17, "Mystical Space Typhoon", "spell","","Target 1 Spell/Trap Card on the field; destroy that target.",nil,nil,nil,"","../Resources/Images/MysticalSpaceTyphoon.png" )
card18 = Card.new(18, "Fissure", "spell","", "Destroy the 1 face-up monster your opponent controls that has the lowest ATK. (If it's a tie, you get to choose.)", nil,nil,nil,"@@emonsterfield.removecard(@@emonsterfield.find('lowest ATK'),false)","../Resources/Images/Fissure.png")
#Fissure STATUS: working
card19 = Card.new(19, "Dark Core", "spell","","Discard 1 card. Remove from play 1 face-up monster.",nil,nil,nil, "discard('all')
                  card = @@monsterfield.selectcard
                  @@outofplay.addcard(card)
                  @@monsterfield.removecard(card,false)
                  ", "../Resources/Images/DarkCore.png")
                  
card20 = Card.new(20, "Spirit of the Harp", "monster","normal", "A spirit that soothes the soul with the music of its heavenly harp.",800,2000,4,"","../Resources/Images/SpiritOfTheHarp.png")
card21 = Card.new(21, "Penguin Soldier", "monster","flip-effect", "",750,500,2,"","../Resources/Images/PenguinSoldier.png")
card22 = Card.new(22, "Mystical Elf", "monster", "normal", "", 800, 2000, 4, "", "../Resources/Images/Todo/MysticalElf.jpg")
card23 = Card.new(23, "Feral Imp", "monster", "normal", "", 1300, 1400, 4, "", "../Resources/Images/Todo/FeralImp.jpg")
$dgirlatk = 2000
                  
$devent1 = "all"
$daction1 = "$array = 0
        $array = @@graveyard.findcards('Dark Magician')
        if $array.size >= 1 
            @@monsterfield.updatespace('Dark Magician Girl','space[2][:atk] = $dgirlatk + 300 * $array.size')
        else
            @@monsterfield.updatespace('Dark Magician Girl','space[2][:atk] = $dgirlatk')
        end
        "
$devent2 = "all"
$daction2 = "$array = 0
$array = @@graveyard.findcards('Magician of Black Chaos')
if $array.size >= 1 
                  @@monsterfield.updatespace('Dark Magician Girl','space[2][:atk] = $dgirlatk + 300 * $array.size') 
                  else
                  @@monsterfield.updatespace('Dark Magician Girl','space[2][:atk] = $dgirlatk')

end
"
$devent3 = "fieldremove_Dark Magician Girl"
$daction3 = "RoutineController.removeroutine($devent1,$daction1)"
$devent4 = "fieldremove_Dark Magician Girl"
$daction4 = "RoutineController.removeroutine($devent2,$daction2)"                 
                  
card24 = Card.new(24, "Dark Magician Girl", "monster", "effect", "", 2000, 1700, 6, "RoutineController.addroutine($devent1,$daction1,0)
                  RoutineController.addroutine($devent2,$daction2,0)
                  RoutineController.addroutine($devent3,$daction3,1)
                  RoutineController.addroutine($devent4,$daction4,1)
                  ", "../Resources/Images/Todo/DarkMagicianGirl.jpg")
                
$deck1 = [celticguardian,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14,card16,card17,card18,card19,card20,card21,card22,card23,card24]
# card15 omitted due to card15 being an empty card
                  
$deck2 = [celticguardian,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13,card14,card16,card17,card18,card19,card20,card21,card22,card23,card24]
# card15 omitted due to card15 being an empty card


$namelist = []
$deck1.each{|name| $namelist.push(name[:name])}
