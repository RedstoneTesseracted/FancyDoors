# This function is run whenever the player returns from the left-rotation transformation menu
#
# The return value is encoded with the pattern:
#   $(angle)$(axis)
#
# Where:
#   $(angle) is a number ranging 0-360 containing the rotation angle (in degrees)
#   $(axis) is a 1-digit number ranging 1-3 representing which axis to rotate around

tag @s remove fdoors.menu.expect.transform.left_rotation
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to transformation menu
execute if score @s fdoors.menu.transform.rotation matches -1 run return run function fdoors:menu/door_config/transform

# Parse axis
scoreboard players operation fdoors.axis fdoors.local = @s fdoors.menu.transform.rotation
scoreboard players operation fdoors.angle fdoors.local = @s fdoors.menu.transform.rotation
scoreboard players operation fdoors.angle fdoors.local /= 10 fdoors.number
scoreboard players operation fdoors.angle fdoors.local *= 10 fdoors.number
scoreboard players operation fdoors.axis fdoors.local -= fdoors.angle fdoors.local
scoreboard players operation @s fdoors.menu.settings.transform.l_rotation.axis = fdoors.axis fdoors.local

# Parse angle
scoreboard players operation fdoors.angle fdoors.local /= 10 fdoors.number
scoreboard players operation @s fdoors.menu.settings.transform.l_rotation.angle = fdoors.angle fdoors.local

# Return to the transformation menu
function fdoors:menu/door_config/transform
