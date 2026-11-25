# This function is run whenever the player returns from the yaw-rotation menu
say handle yaw
execute unless score @s fdoors.menu.transform.yaw matches -2147483647 run scoreboard players operation @s fdoors.menu.settings.transform.yaw = @s fdoors.menu.transform.yaw
tag @s remove fdoors.menu.expect.transform.yaw
tag @s remove fdoors.menu.open

# Return to transform dialog
function fdoors:menu/door_config/transform
