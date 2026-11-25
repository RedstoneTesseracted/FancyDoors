# This function is run whenever the player returns from the scale transformation menu
#
# The return value is encoded with the pattern:
#   $(x)0$(y)0$(z)
#
# Where:
#   $(x), $(y), and $(z) are all 1 or 2 digit numbers containing the scale

tag @s remove fdoors.menu.expect.transform.scale
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to transform menu
execute if score @s fdoors.menu.transform.scale matches -2147483647 run return run function fdoors:menu/door_config/transform

# Parse components
scoreboard players operation fdoors.triple.in fdoors.local = @s fdoors.menu.transform.scale
function fdoors:menu/handle/parse_triple
scoreboard players operation @s fdoors.menu.settings.transform.scale.x = fdoors.triple.n1 fdoors.local
scoreboard players operation @s fdoors.menu.settings.transform.scale.y = fdoors.triple.n2 fdoors.local
scoreboard players operation @s fdoors.menu.settings.transform.scale.z = fdoors.triple.n3 fdoors.local

# Return to the transformation menu
function fdoors:menu/door_config/transform
