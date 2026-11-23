# This function is run whenever the player returns from the start-closing sound menu
#
# The return value is encoded with the pattern:
#   $(sound)0$(volume)0$(pitch)
#

tag @s remove fdoors.menu.expect.sounds.start_closing
tag @s remove fdoors.menu.open

# Special values:
#   -1: Discard changes and return to sounds menu
execute if score @s fdoors.menu.sounds.start_closing matches -1 run return run function fdoors:menu/door_config/sounds

# Parse components
scoreboard players operation fdoors.triple.in fdoors.local = @s fdoors.menu.sounds.start_closing
function fdoors:menu/handle/parse_triple
scoreboard players operation @s fdoors.menu.settings.sounds.start_closing.sound = fdoors.triple.n1 fdoors.local
scoreboard players operation @s fdoors.menu.settings.sounds.start_closing.volume = fdoors.triple.n2 fdoors.local
scoreboard players operation @s fdoors.menu.settings.sounds.start_closing.pitch = fdoors.triple.n3 fdoors.local
scoreboard players set @s fdoors.menu.settings.sounds.start_closing.update 1

# Return to the sounds menu
function fdoors:menu/door_config/sounds
