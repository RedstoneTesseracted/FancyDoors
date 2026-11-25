# This function displays the pitch menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.transform.pitch
scoreboard players enable @s fdoors.menu.transform.pitch
tag @s add fdoors.menu.expect.transform.pitch
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/pitch run function fdoors:menu/door_config/panic/macro
