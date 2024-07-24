# This function configures newly summoned base door entities
# It is called from fdoors:door/summon, and is run BY and AT the base door entity

# Add tags
tag @s add fdoors.door.base

# Set scores
execute store result score @s fdoors.uuid1 run data get entity @s UUID[0]
execute store result score @s fdoors.uuid2 run data get entity @s UUID[1]
execute store result score @s fdoors.uuid3 run data get entity @s UUID[2]
execute store result score @s fdoors.uuid4 run data get entity @s UUID[3]
