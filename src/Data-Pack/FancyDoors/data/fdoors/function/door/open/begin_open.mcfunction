# This function runs at the very start of the door opening animation to clear physical blocks and summon display entities
# It is run BY and AT the base door entity

# Clear physical blocks and summon block displays
function fdoors:door/open/summon_display
function fdoors:door/open/place_air

# Force duration score
execute store result score @s fdoors.animation.duration run data get entity @s data.duration
execute store result score @s fdoors.animation.offset run data get entity @s data.offset
