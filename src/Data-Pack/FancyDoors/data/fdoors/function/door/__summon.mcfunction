# This function configures newly summoned base door entities
# It is called from fdoors:door/summon, and is run BY and AT the base door entity

# Add tags
tag @s add fdoors.door.base

# Set scores
execute store result score @s fdoors.uuid1 run data get entity @s UUID[0]
execute store result score @s fdoors.uuid2 run data get entity @s UUID[1]
execute store result score @s fdoors.uuid3 run data get entity @s UUID[2]
execute store result score @s fdoors.uuid4 run data get entity @s UUID[3]

scoreboard players set @s fdoors.animation.tick -1
scoreboard players set @s fdoors.animation.delta 0
scoreboard players set @s fdoors.animation.old_delta 0

# Modify NBT
# Allowed trigger types:
#    range - triggers when a player is within a given range (params: range [int])
#    predicate - triggers when a custom predicate is fulfilled (params: predicate [str])
#    block - triggers when a block state is fulfilled
#    
data modify entity @s data set value {blocks:[], trigger: "range", trigger_args: {min: 0, max: 4}, duration: 5, transform: {translation: [0.0, 3.0, 0.0]}, sounds:{}}

# Configure default sound effects
data modify entity @s data.sounds.start_open set value {sound:"minecraft:entity.iron_golem.attack", volume: 1.0, pitch: 2.0}
data modify entity @s data.sounds.finish_open set value {sound:"minecraft:entity.iron_golem.step", volume: 1.0, pitch: 1.0}
data modify entity @s data.sounds.start_close set value {sound:"minecraft:entity.iron_golem.attack", volume: 1.0, pitch: 2.0}
data modify entity @s data.sounds.finish_close set value {sound:"minecraft:entity.iron_golem.step", volume: 1.0, pitch: 1.0}
