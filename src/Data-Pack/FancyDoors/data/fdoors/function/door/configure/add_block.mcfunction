# Adds a new block to the door and renders it if in configuration mode
# This is called from fdoors:door/configure/toggle_block
# This is run BY and AT the base door entity

# Do not add disabled blocks
execute if score fdoors.enable_bedrock fdoors.config matches 0 if data storage fdoors:utility new_block{id: "minecraft:bedrock"} run return run title @p[tag=fdoors.add_block.player_context] actionbar {translate: "fdoors.messages.add_block_fail.bedrock", fallback: "Adding bedrock to doors is disabled"}
execute if score fdoors.enable_barriers fdoors.config matches 0 if data storage fdoors:utility new_block{id: "minecraft:barrier"} run return run title @p[tag=fdoors.add_block.player_context] actionbar {translate: "fdoors.messages.add_block_fail.barrier", fallback: "Adding barrier blocks to doors is disabled"}
execute if score fdoors.enable_block_entities fdoors.config matches 0 if score fdoors.is_block_entity fdoors.local matches 1 run return run title @p[tag=fdoors.add_block.player_context] actionbar {translate: "fdoors.messages.add_block_fail.block_entity", fallback: "Adding block entities to doors is disabled"}

# Compile block state string if this block has properties
data modify storage fdoors:utility state_string set value {value: ""}
execute store result score fdoors.property_count fdoors.local run data get storage fdoors:utility new_block.properties
execute if score fdoors.property_count fdoors.local matches 1.. run function fdoors:door/configure/compile_block_state/build_block_state_string
data modify storage fdoors:utility new_block.state_string set from storage fdoors:utility state_string.value
scoreboard players reset fdoors.property_count fdoors.local

# Add to door's blocks tag
data modify entity @s data.blocks append from storage fdoors:utility new_block

# Visually show block if we're in configuration mode
data modify storage fdoors:utility temp.glow_color set from entity @s data.glow_color
data modify storage fdoors:utility show_block set from storage fdoors:utility new_block
execute if entity @s[tag=fdoors.door.configure_ready] run function fdoors:door/configure/show_preview_block

# Clean up temporary storage
data remove storage fdoors:utility show_block
