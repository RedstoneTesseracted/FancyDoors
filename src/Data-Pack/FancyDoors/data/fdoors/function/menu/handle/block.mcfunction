# This function is run whenever the player returns from the block trigger menu
#
# The return value is encoded with the pattern:
#   $(preset)

tag @s remove fdoors.menu.expect.block
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to root menu
#   -2: Switch from "block" trigger to "item" trigger
execute if score @s fdoors.menu.block matches -1 run return run function fdoors:menu/door_config/root
execute if score @s fdoors.menu.block matches -2 run return run function fdoors:menu/door_config/trigger_item

# Write to uncommitted settings
scoreboard players operation @s fdoors.menu.settings.block = @s fdoors.menu.block

# Finally return to the root menu
function fdoors:menu/door_config/root
