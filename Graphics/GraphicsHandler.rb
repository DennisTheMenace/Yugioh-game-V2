#!/usr/bin/env ruby

# In Resources.rb? - Yes


$ginterface = File.new("cards.txt", "w+")

def graphicsupdate(mode)
    playerset('')
    $ginterface = File.new("cards.txt", "w+")
    $ginterface.puts($monsterfield1.space1[2][:file])
    $ginterface.puts($monsterfield1.space2[2][:file])
    $ginterface.puts($monsterfield1.space3[2][:file])
    $ginterface.puts($monsterfield1.space4[2][:file])
    $ginterface.puts($monsterfield1.space5[2][:file])
    $ginterface.puts($spelltrapfield1.space1[2][:file])
    $ginterface.puts($spelltrapfield1.space2[2][:file])
    $ginterface.puts($spelltrapfield1.space3[2][:file])
    $ginterface.puts($spelltrapfield1.space4[2][:file])
    $ginterface.puts($spelltrapfield1.space5[2][:file])
    $ginterface.close

end
