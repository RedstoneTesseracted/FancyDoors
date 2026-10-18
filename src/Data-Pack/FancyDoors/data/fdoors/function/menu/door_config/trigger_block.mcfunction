# This function displays the block trigger menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.block
scoreboard players enable @s fdoors.menu.block
tag @s add fdoors.menu.expect.block
tag @s add fdoors.menu.open
scoreboard players set @s fdoors.menu.settings.trigger 1

# Show dialog
dialog show @s fdoors:door_config/trigger_block
