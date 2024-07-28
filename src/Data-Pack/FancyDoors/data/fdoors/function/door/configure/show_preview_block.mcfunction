# This function shows a preview of one of the blocks comprising the door
# It is run BY and AT the base door entity
# The block data is provided via the fdoors:utility.show_block storage tag

execute store result score fdoors.uuid1 fdoors.local run data get entity @s UUID[0]
execute store result score fdoors.uuid2 fdoors.local run data get entity @s UUID[1]
execute store result score fdoors.uuid3 fdoors.local run data get entity @s UUID[2]
execute store result score fdoors.uuid4 fdoors.local run data get entity @s UUID[3]
execute align xyz positioned ~-0.005 ~-0.005 ~-0.005 summon minecraft:block_display run function fdoors:door/configure/__show_preview_block
