# Checks whether the player with the "fdoors.player.context" tag just 
# left-clicked on this interaction entity and returns the result

execute as @e[type=minecraft:interaction] if function fdoors:common/just_right_clicked on target if entity @s[tag=fdoors.player.context] run return 1
return 0
