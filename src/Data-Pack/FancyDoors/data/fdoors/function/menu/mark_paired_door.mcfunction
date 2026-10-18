# This function attempts to mark the currently paired door with the "fdoors.door.context" tag
# Returns the success value of attempting to do so
#
# This function is run BY the player

# Obtain paired UUID from tool
execute store result score fdoors.uuid1 fdoors.local run data get entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid[3]

# Add tag to marker with matching UUID
tag @e[tag=fdoors.door.context] remove fdoors.door.context
execute as @e[tag=fdoors.door.base,type=minecraft:marker] \
if score fdoors.uuid1 fdoors.local = @s fdoors.uuid1 \
if score fdoors.uuid2 fdoors.local = @s fdoors.uuid2 \
if score fdoors.uuid3 fdoors.local = @s fdoors.uuid3 \
if score fdoors.uuid4 fdoors.local = @s fdoors.uuid4 \
run tag @s add fdoors.door.context

# Return success value
execute unless entity @e[tag=fdoors.door.context,limit=1] run return fail
return 1
