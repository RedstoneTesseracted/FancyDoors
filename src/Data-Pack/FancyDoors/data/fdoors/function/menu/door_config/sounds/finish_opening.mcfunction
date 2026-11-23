# This function displays the finish-opening sound menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.sounds.finish_opening
scoreboard players enable @s fdoors.menu.sounds.finish_opening
tag @s add fdoors.menu.expect.sounds.finish_opening
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/sounds/finish_opening run function fdoors:menu/door_config/panic/macro
