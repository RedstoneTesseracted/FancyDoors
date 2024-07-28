# This function runs at the end of the door closing

# Set blocks
function fdoors:door/close/place_blocks

# Destroy all block displays paired to this door
execute store result score fdoors.uuid1 fdoors.local run data get entity @s UUID[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s UUID[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s UUID[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s UUID[3]

execute as @e[tag=fdoors.door.visual_block] \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local \
run kill @s[type=minecraft:block_display]
