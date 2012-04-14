#!/usr/bin/env ruby

# In Resources.rb? - Yes

# Activate a spell.

# How will I do field spell cards?


def spell

    playerset($testing)
      
    spellcard = @@hand.selectcard('spell')
    print "You have "
    cprint("activated ","green")
    puts spellcard[:name]
    @@spelltrapfield.addcard(4,spellcard)	# Adds the spell to the spell field.
    puts "Spell Field:"
    @@spelltrapfield.list
    puts "Evaluating spell data..."	
    eval(spellcard[:effect])
    @@spelltrapfield.removecard(spellcard)		# Deletes the spell from the spell field
end
