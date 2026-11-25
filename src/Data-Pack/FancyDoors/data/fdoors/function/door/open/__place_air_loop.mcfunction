# This function either places water or air depending on whether the block was waterlogged
# Check if waterlogged
scoreboard players set fdoors.waterlogged fdoors.local 0
data modify storage fdoors:utility compare set value "false"
execute unless data storage fdoors:utility unreplaced_blocks[0].properties.waterlogged store result score fdoors.waterlogged fdoors.local run data modify storage fdoors:utility compare set from storage fdoors:utility unreplaced_blocks[0].properties.waterlogged

# Fill with either water or air
scoreboard players set fdoors.prevent_remove fdoors.local 0
$execute if score fdoors.regenerate_doors fdoors.config matches 0 unless block ~$(x) ~$(y) ~$(z) $(id)$(state_string) run scoreboard players set fdoors.prevent_remove fdoors.local 1
$execute if score fdoors.waterlogged fdoors.local matches 0 if score fdoors.prevent_remove fdoors.local matches 0 run setblock ~$(x) ~$(y) ~$(z) minecraft:air
$execute if score fdoors.waterlogged fdoors.local matches 1 if score fdoors.prevent_remove fdoors.local matches 0 run setblock ~$(x) ~$(y) ~$(z) minecraft:water

# Clean up
scoreboard players reset fdoors.waterlogged fdoors.local
data remove storage fdoors:utility compare
