# This function displays the door destruction confirmation menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.destroy
scoreboard players enable @s fdoors.menu.destroy
tag @s add fdoors.menu.expect.destroy
tag @s add fdoors.menu.open

# Show dialog
dialog show @s fdoors:door_config/confirm_destroy
