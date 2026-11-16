# This function checks if a block at the given position already exists and returns a boolean
# It is run BY the base door entity
# Position is provided via function macros

# Look up in array to determine if it exists
$execute if data entity @s data.blocks[{x:$(x),y:$(y),z:$(z),id:"$(id)",properties:$(properties)}] run return 1

# Does not exist
return 0
