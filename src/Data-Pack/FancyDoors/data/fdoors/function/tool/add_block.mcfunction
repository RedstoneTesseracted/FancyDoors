# This function is called once the block selector arrow hits a block
# It adds a new block to the currently paired base door entity

# Get the paired door entity
execute store result score fdoors.uuid1 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s weapon.components."minecraft:custom_data".fdoors.paired_uuid[3]

#tellraw @a [{"score": {"name": "fdoors.uuid1", "objective": "fdoors.local"}}, {"text": ", "}, {"score": {"name": "fdoors.uuid2", "objective": "fdoors.local"}}, {"text": ", "}, {"score": {"name": "fdoors.uuid3", "objective": "fdoors.local"}}, {"text": ", "}, {"score": {"name": "fdoors.uuid4", "objective": "fdoors.local"}}]
#execute as @e[tag=fdoors.door.base] run tellraw @a [{"score": {"name": "@s", "objective": "fdoors.uuid1"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.uuid2"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.uuid3"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.uuid4"}}]

tag @e[tag=fdoors.door.context] remove fdoors.door.context
execute as @e[tag=fdoors.door.base] if score @s fdoors.uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.uuid4 = fdoors.uuid4 fdoors.local run tag @s add fdoors.door.context

# Show error and return early if there is no paired entity
execute unless entity @e[tag=fdoors.door.context] run function fdoors:tool/on_paired_missing
execute unless entity @e[tag=fdoors.door.context] run return fail

# Show error and return early if the paired entity is too far away
execute unless entity @e[tag=fdoors.door.context,distance=..8] run function fdoors:tool/on_paired_too_far
execute unless entity @e[tag=fdoors.door.context,distance=..8] run return fail


# Get position of paired door entity
execute store result score fdoors.base.x fdoors.local run data get entity @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] Pos[0]
execute store result score fdoors.base.y fdoors.local run data get entity @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] Pos[1]
execute store result score fdoors.base.z fdoors.local run data get entity @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] Pos[2]


# Work out the position of the block we just hit
execute store result score fdoors.arrow.x fdoors.local run data get entity @s Pos[0] 10.0
execute store result score fdoors.arrow.y fdoors.local run data get entity @s Pos[1] 10.0
execute store result score fdoors.arrow.z fdoors.local run data get entity @s Pos[2] 10.0

scoreboard players operation fdoors.arrow.x fdoors.local += @s fdoors.last_motion.x
scoreboard players operation fdoors.arrow.y fdoors.local += @s fdoors.last_motion.y
scoreboard players operation fdoors.arrow.z fdoors.local += @s fdoors.last_motion.z

scoreboard players set 10 fdoors.local 10
scoreboard players operation fdoors.arrow.x fdoors.local /= 10 fdoors.local
scoreboard players operation fdoors.arrow.y fdoors.local /= 10 fdoors.local
scoreboard players operation fdoors.arrow.z fdoors.local /= 10 fdoors.local


# Calculate offset between the two positions so that we can appropriately configure the transformation
scoreboard players operation fdoors.arrow.x fdoors.local -= fdoors.base.x fdoors.local
scoreboard players operation fdoors.arrow.y fdoors.local -= fdoors.base.y fdoors.local
scoreboard players operation fdoors.arrow.z fdoors.local -= fdoors.base.z fdoors.local


# Build new configuration tag
data modify storage fdoors:utility new_block set value {x:0, y:0, z:0, Name: "", Properties: {}}
data modify storage fdoors:utility new_block.Name set from entity @s inBlockState.Name
data modify storage fdoors:utility new_block.Properties set from entity @s inBlockState.Properties
execute store result storage fdoors:utility new_block.x int 1 run scoreboard players get fdoors.arrow.x fdoors.local
execute store result storage fdoors:utility new_block.y int 1 run scoreboard players get fdoors.arrow.y fdoors.local
execute store result storage fdoors:utility new_block.z int 1 run scoreboard players get fdoors.arrow.z fdoors.local

# Hand the new block over to the door for handling
execute as @e[tag=fdoors.door.context,limit=1] at @s run function fdoors:door/configure/toggle_block
data remove storage fdoors:utility new_block


# Destroy this arrow immediately
kill @s[type=minecraft:arrow]

# Clear paired base entity context tag
tag @e[tag=fdoors.door.context] remove fdoors.door.context
