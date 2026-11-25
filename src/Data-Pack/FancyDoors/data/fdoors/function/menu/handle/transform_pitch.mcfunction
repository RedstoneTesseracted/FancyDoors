# This function is run whenever the player returns from the pitch-rotation menu
say handle pitch
execute unless score @s fdoors.menu.transform.pitch matches -2147483647 run scoreboard players operation @s fdoors.menu.settings.transform.pitch = @s fdoors.menu.transform.pitch
tag @s remove fdoors.menu.expect.transform.pitch
tag @s remove fdoors.menu.open

# Return to transform dialog
function fdoors:menu/door_config/transform
