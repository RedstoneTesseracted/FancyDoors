# This function is run whenever the player returns from the x-translation menu

execute unless score @s fdoors.menu.transform.offset matches -2147483647 run scoreboard players operation @s fdoors.menu.settings.transform.offset.x = @s fdoors.menu.transform.offset
tag @s remove fdoors.menu.expect.transform.translation.x
tag @s remove fdoors.menu.open

# Return to offset dialog
function fdoors:menu/door_config/transform/offset
