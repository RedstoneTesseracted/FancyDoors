# This function is run whenever the player returns from the "destroy door" menu

execute unless score @s fdoors.menu.duration matches -1 run scoreboard players operation @s fdoors.menu.settings.duration = @s fdoors.menu.duration
tag @s remove fdoors.menu.expect.destroy
tag @s remove fdoors.menu.open

# Destroy door if selected
execute if score @s fdoors.menu.destroy matches 1 run return run function fdoors:menu/remove_door

# Otherwise, return to root dialog
function fdoors:menu/door_config/root
