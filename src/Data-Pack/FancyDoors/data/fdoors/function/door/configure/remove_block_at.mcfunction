# This function removes the saved block at the given position
# Position is provided via function macros
# This is run BY the base door entity

# Remove from marker storage
$data remove entity @s data.blocks[{x:$(x),y:$(y),z:$(z)}]

# Destroy block display at that position
execute store result score fdoors.uuid1 fdoors.local run data get entity @s UUID[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s UUID[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s UUID[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s UUID[3]

execute store result score fdoors.translation.x fdoors.local run data get storage fdoors:utility new_block.x
execute store result score fdoors.translation.y fdoors.local run data get storage fdoors:utility new_block.y
execute store result score fdoors.translation.z fdoors.local run data get storage fdoors:utility new_block.z

execute as @e[type=minecraft:block_display,tag=fdoors.door.configuration_display] \
if score @s fdoors.translation.x = fdoors.translation.x fdoors.local \
if score @s fdoors.translation.y = fdoors.translation.y fdoors.local \
if score @s fdoors.translation.z = fdoors.translation.z fdoors.local \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local \
run kill @s[type=minecraft:block_display]
