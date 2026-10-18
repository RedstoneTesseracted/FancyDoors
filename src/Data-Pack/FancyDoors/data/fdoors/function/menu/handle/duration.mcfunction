# This function is run whenever the player returns from the duration menu

execute unless score @s fdoors.menu.duration matches -1 run scoreboard players operation @s fdoors.menu.settings.duration = @s fdoors.menu.duration
tag @s remove fdoors.menu.expect.duration
tag @s remove fdoors.menu.open

# Return to root dialog
function fdoors:menu/door_config/root
