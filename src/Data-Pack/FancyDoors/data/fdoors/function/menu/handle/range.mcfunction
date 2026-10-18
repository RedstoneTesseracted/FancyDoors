# This function is run whenever the player returns from the range trigger menu
#
# The return value is encoded with the pattern:
#   $(min)0$(max)
#
# Where $(min) and $(max) are 1-2 digit numbers

tag @s remove fdoors.menu.expect.range
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to root menu
#   -2: Switch from "range" trigger to "block" trigger
execute if score @s fdoors.menu.range matches -1 run return run function fdoors:menu/door_config/root
execute if score @s fdoors.menu.range matches -2 run return run function fdoors:menu/door_config/trigger_block

# Decode tuple
scoreboard players operation fdoors.input fdoors.local = @s fdoors.menu.range
function fdoors:menu/decode_pair

# Write settings to uncommitted scores
scoreboard players operation @s fdoors.menu.settings.range.min = fdoors.x fdoors.local
scoreboard players operation @s fdoors.menu.settings.range.max = fdoors.y fdoors.local

# Finally return to the root menu
function fdoors:menu/door_config/root
