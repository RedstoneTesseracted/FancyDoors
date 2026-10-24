# This function displays the outline color menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.color
scoreboard players enable @s fdoors.menu.color
tag @s add fdoors.menu.expect.color
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/color run function fdoors:menu/door_config/panic/macro
