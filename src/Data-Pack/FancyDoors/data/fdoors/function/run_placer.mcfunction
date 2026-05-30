# This function places a new door entity at the current position and
# delete the placer entity

# Summon door at current position
execute at @s run function fdoors:door/summon

# Remove temporary placer entity
kill @s[tag=fdoors.door.placer]
