# This function displays the root menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.transform.rotation
scoreboard players enable @s fdoors.menu.transform.rotation
tag @s add fdoors.menu.expect.transform.left_rotation
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/left_rotation run function fdoors:menu/door_config/panic/macro
