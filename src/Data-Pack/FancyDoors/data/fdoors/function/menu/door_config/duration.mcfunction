# This function displays the duration menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.duration
scoreboard players enable @s fdoors.menu.duration
tag @s add fdoors.menu.expect.duration
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/duration run function fdoors:menu/door_config/panic/macro
