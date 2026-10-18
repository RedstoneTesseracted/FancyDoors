# This function is run whenever the player returns from the item trigger menu
#
# The return value is encoded with the pattern:
#   $(min)0$(max)$(set)$(opt)
#
# Where:
#  $(min) and $(max) are 1-2 digits numbers
#  $(set) is 1-digit boolean (0 or 1)
#  $(opt) is 1-digit number ranging 1-3
#

tag @s remove fdoors.menu.expect.item
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to root menu
#   -2: Switch from "item" trigger to "range" trigger
execute if score @s fdoors.menu.item matches -1 run return run function fdoors:menu/door_config/root
execute if score @s fdoors.menu.item matches -2 run return run function fdoors:menu/door_config/trigger_range

# Parse the initial "$(min)0$(max)" part
scoreboard players operation fdoors.input fdoors.local = @s fdoors.menu.item
scoreboard players operation fdoors.input fdoors.local /= 100 fdoors.number
function fdoors:menu/decode_pair
scoreboard players operation @s fdoors.menu.settings.range.min = fdoors.x fdoors.local
scoreboard players operation @s fdoors.menu.settings.range.max = fdoors.y fdoors.local

# Obtain $(set) from ten's place
scoreboard players operation @s fdoors.menu.settings.item = @s fdoors.menu.item
scoreboard players operation @s fdoors.menu.settings.item /= 10 fdoors.number
scoreboard players operation @s fdoors.menu.settings.item %= 10 fdoors.number

# Obtain $(opt) from one's place
scoreboard players operation @s fdoors.menu.settings.item_components = @s fdoors.menu.item
scoreboard players operation @s fdoors.menu.settings.item_components %= 10 fdoors.number

# Finally return to the root menu
function fdoors:menu/door_config/root
