# This function displays the item trigger menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.item
scoreboard players enable @s fdoors.menu.item
tag @s add fdoors.menu.expect.item
tag @s add fdoors.menu.open
scoreboard players set @s fdoors.menu.settings.trigger 2

# Show dialog
dialog show @s fdoors:door_config/trigger_item
