# This function either places water or air depending on whether the block was waterlogged
execute store result score fdoors.waterlogged fdoors.local run data get storage fdoors:utility unreplaced_blocks[0].Properties.waterlogged
$execute if score fdoors.waterlogged fdoors.local matches 0 run setblock ~$(x) ~$(y) ~$(z) minecraft:air
$execute if score fdoors.waterlogged fdoors.local matches 1 run setblock ~$(x) ~$(y) ~$(z) minecraft:water
scoreboard players reset fdoors.waterlogged fdoors.local
