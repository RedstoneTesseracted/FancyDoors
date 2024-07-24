# Checks whether the player with the "fdoors.player.context" tag just 
# left-clicked on this interaction entity and returns the result

execute if function fdoors:common/just_left_clicked on attacker if entity @s[tag=fdoors.player.context] run return 1
return 0
