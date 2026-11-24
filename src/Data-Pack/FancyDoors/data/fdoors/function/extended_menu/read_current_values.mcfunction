# This function reads the door's current configuration into a bunch of player scoreboards.
# These scoreboards can then be safely modified with the option to save or discard
#
# This is run BY the player

# Retrieve the "data" tag from the paired door entity
execute unless function fdoors:menu/mark_paired_door run return 0
data modify storage fdoors:utility config set from entity @n[tag=fdoors.door.context,limit=1] data
tag @e[tag=fdoors.door.context,limit=1] remove fdoors.door.context

return 1
