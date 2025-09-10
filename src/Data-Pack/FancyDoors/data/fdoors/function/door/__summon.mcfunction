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
#    range - triggers when entity on ACL list is within a given range (params: range [int])
#    predicate - triggers when a custom predicate is filled (params: predicate [str])
#    
data modify entity @s data set value {blocks:[], trigger: "range", trigger_args: {acl: [], min: 0, max: 8}, duration: 5, offset: 3, sounds:{}}

# Configure default sound effects
data modify entity @s data.sounds.start_open set value {sound:"minecraft:entity.iron_golem.attack", volume: 1.0, pitch: 2.0}
data modify entity @s data.sounds.finish_open set value {sound:"minecraft:entity.iron_golem.step", volume: 1.0, pitch: 1.0}
data modify entity @s data.sounds.start_close set value {sound:"minecraft:entity.iron_golem.attack", volume: 1.0, pitch: 2.0}
data modify entity @s data.sounds.finish_close set value {sound:"minecraft:entity.iron_golem.step", volume: 1.0, pitch: 1.0}
