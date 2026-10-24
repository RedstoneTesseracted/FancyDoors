# This function updates all paired block displays at a particular animation frame
# This is run BY the base door entity

# Make several scores/data available in other execution scopes
data modify storage fdoors:utility transform set from entity @s data.transform
scoreboard players operation fdoors.tick fdoors.local = @s fdoors.animation.tick
scoreboard players operation fdoors.duration fdoors.local = @s fdoors.animation.duration
scoreboard players operation fdoors.delta fdoors.local = @s fdoors.animation.delta
scoreboard players operation fdoors.uuid1 fdoors.local = @s fdoors.uuid1
scoreboard players operation fdoors.uuid2 fdoors.local = @s fdoors.uuid2
scoreboard players operation fdoors.uuid3 fdoors.local = @s fdoors.uuid3
scoreboard players operation fdoors.uuid4 fdoors.local = @s fdoors.uuid4

# Execute on all block displays paired to this door
execute as @e[tag=fdoors.door.visual_block,type=minecraft:block_display] \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local \
run function fdoors:door/animate/__update_displays
