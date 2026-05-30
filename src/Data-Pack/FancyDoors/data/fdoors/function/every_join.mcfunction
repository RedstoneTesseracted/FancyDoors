# This function is run EVERY time a player joins a world
# This exists because scoreboard triggers suck

# Reset triggers
tag @s remove fdoors.menu.open
scoreboard players reset @s fdoors.menu.action

# Reset score
scoreboard players set @s fdoors.quits 0
