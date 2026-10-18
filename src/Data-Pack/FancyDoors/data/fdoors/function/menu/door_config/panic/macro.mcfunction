# Emergency dialog shown when a function macro fails to run.
# This function will try to clean up any advancement triggers/state tags, then return the player to the main menu

# Reset state
function fdoors:menu/reset

# Enable triggers (taken from fdoors:menu/door_config/root)
scoreboard players reset @s fdoors.menu.goto
scoreboard players enable @s fdoors.menu.goto
tag @s add fdoors.menu.expect.goto
tag @s add fdoors.menu.open

# Show dialog
dialog show @s fdoors:door_config/panic/macro

