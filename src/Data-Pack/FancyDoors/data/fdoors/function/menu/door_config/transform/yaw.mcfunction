# This function displays the yaw menu to the player that runs it

# Enable triggers
scoreboard players reset @s fdoors.menu.transform.yaw
scoreboard players enable @s fdoors.menu.transform.yaw
tag @s add fdoors.menu.expect.transform.yaw
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/yaw run function fdoors:menu/door_config/panic/macro
