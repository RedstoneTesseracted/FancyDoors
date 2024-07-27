# This function notifies the player when no door base entity has been paired
# It is called from fdoors:tool/add_block
# It is run BY the selector arrow entity

# Notify the player who shot the arrow
execute store result score fdoors.uuid1 fdoors.local run data get entity @s Owner[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s Owner[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s Owner[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s Owner[3]

execute as @a store result score @s fdoors.uuid1 run data get entity @s UUID[0]
execute as @a store result score @s fdoors.uuid2 run data get entity @s UUID[1]
execute as @a store result score @s fdoors.uuid3 run data get entity @s UUID[2]
execute as @a store result score @s fdoors.uuid4 run data get entity @s UUID[3]

# Display text
execute as @a if score @s fdoors.uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.uuid4 = fdoors.uuid4 fdoors.local \
run title @s actionbar {"translate":"fdoors.message.paired_too_far","fallback":"Paired entity too far away","color":"red","italic":false}

playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1

# Destroy the arrow
kill @s[type=minecraft:arrow]
