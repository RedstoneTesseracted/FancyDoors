# This function displays the root menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.transform.offset
scoreboard players enable @s fdoors.menu.transform.offset
tag @s add fdoors.menu.expect.transform.translation
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/offset run function fdoors:menu/door_config/panic/macro
