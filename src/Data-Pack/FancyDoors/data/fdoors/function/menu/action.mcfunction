# This function handles the player interacting with the door customization menu

# Actions:
#  1 = Do nothing
#  2 = Set trigger to "range"
#  3 = Set trigger to "block"
# 10 = Remove door
# 11 = Cancelled

# Obtain the entity that was targeted
execute store result score fdoors.uuid1 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[3]

tag @e[tag=fdoors.door.context] remove fdoors.door.context
execute as @e[tag=fdoors.door.base,type=minecraft:marker] \
if score fdoors.uuid1 fdoors.local = @s fdoors.uuid1 \
if score fdoors.uuid2 fdoors.local = @s fdoors.uuid2 \
if score fdoors.uuid3 fdoors.local = @s fdoors.uuid3 \
if score fdoors.uuid4 fdoors.local = @s fdoors.uuid4 \
run tag @s add fdoors.door.context

# Execute action
execute if score @s fdoors.menu.action matches 2 as @e[tag=fdoors.door.context,limit=1] run function fdoors:menu/set_trigger_to_range
execute if score @s fdoors.menu.action matches 3 as @e[tag=fdoors.door.context,limit=1] run function fdoors:menu/set_trigger_to_block
execute if score @s fdoors.menu.action matches 10 as @e[tag=fdoors.door.context,limit=1] run function fdoors:door/destroy


# Reset tags/trigger
tag @e[tag=fdoors.door.context] remove fdoors.door.context
tag @s remove fdoors.menu.open
scoreboard players reset @s fdoors.menu.action
