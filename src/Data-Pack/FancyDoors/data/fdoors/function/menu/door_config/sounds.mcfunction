# This function displays the sounds submenu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.goto
scoreboard players enable @s fdoors.menu.goto
tag @s add fdoors.menu.expect.goto
tag @s add fdoors.menu.open

# Show dialog
dialog show @s fdoors:door_config/sounds
