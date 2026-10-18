# This function displays the range trigger menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.range
scoreboard players enable @s fdoors.menu.range
tag @s add fdoors.menu.expect.range
tag @s add fdoors.menu.open
scoreboard players set @s fdoors.menu.settings.trigger 0

# Show dialog
execute unless function fdoors:dialog/door_config/trigger_range run function fdoors:menu/door_config/panic/macro
