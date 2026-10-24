# Enable triggers
scoreboard players reset @s fdoors.menu.transform.offset
scoreboard players enable @s fdoors.menu.transform.offset
tag @s add fdoors.menu.expect.transform.translation.z
tag @s add fdoors.menu.open

# Show dialog
execute unless function fdoors:dialog/door_config/transform/offset/z run function fdoors:menu/door_config/panic/macro
