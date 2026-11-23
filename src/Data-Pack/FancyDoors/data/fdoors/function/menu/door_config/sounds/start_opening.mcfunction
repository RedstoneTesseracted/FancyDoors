# This function displays the start-opening sound menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.sounds.start_opening
scoreboard players enable @s fdoors.menu.sounds.start_opening
tag @s add fdoors.menu.expect.sounds.start_opening
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/sounds/start_opening run function fdoors:menu/door_config/panic/macro
