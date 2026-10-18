# This function displays the root menu to the player that runs it
say fdoors:menu/door_config/transform/scale
# Enable triggers
scoreboard players reset @s fdoors.menu.transform.scale
scoreboard players enable @s fdoors.menu.transform.scale
tag @s add fdoors.menu.expect.transform.scale
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/scale run function fdoors:menu/door_config/panic/macro
