# This function is run whenever the player returns from the outline color menu
#
# The return value is encoded with the pattern:
#   $(r)0$(g)0$(b)
#
# Where:
#   $(r), $(g), and $(b) are all 1 or 2 digit numbers containing the red/green/blue values

tag @s remove fdoors.menu.expect.color
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to root menu
execute if score @s fdoors.menu.color matches -1 run return run function fdoors:menu/door_config/root

# Parse components
scoreboard players operation fdoors.triple.in fdoors.local = @s fdoors.menu.color
function fdoors:menu/handle/parse_triple
scoreboard players operation @s fdoors.menu.settings.color.r = fdoors.triple.n1 fdoors.local
scoreboard players operation @s fdoors.menu.settings.color.g = fdoors.triple.n2 fdoors.local
scoreboard players operation @s fdoors.menu.settings.color.b = fdoors.triple.n3 fdoors.local

#tellraw @a ["R:", {score: {name: "@s", objective: "fdoors.menu.settings.color.r"}}, ", G:", {score: {name: "@s", objective: "fdoors.menu.settings.color.g"}}, ", B:", {score: {name: "@s", objective: "fdoors.menu.settings.color.b"}}]

# Return to the transformation menu
function fdoors:menu/door_config/root
