# This function is used by add_block to check if the selected block is a block entity.

# Set up and run function macro
data modify storage fdoors:utility block_pos set value {x: 0, y: 0, z: 0}
execute store result storage fdoors:utility block_pos.x int 1 run scoreboard players get fdoors.arrow.x fdoors.local
execute store result storage fdoors:utility block_pos.y int 1 run scoreboard players get fdoors.arrow.y fdoors.local
execute store result storage fdoors:utility block_pos.z int 1 run scoreboard players get fdoors.arrow.z fdoors.local
scoreboard players set fdoors.check_block_macro_result fdoors.local 0
scoreboard players set fdoors.local.result fdoors.local 0
execute store result score fdoors.check_block_macro_result fdoors.local run function fdoors:tool/__check_block_entity with storage fdoors:utility block_pos

# Check output for macro failure
execute if score fdoors.check_block_macro_result fdoors.local matches 0 run tellraw @p {translate: "fdoors.messages.macro_fail", fallback: "Function macro %s failed to run (called by %s).  See %s for arguments.", color: "red", with: [{text: "fdoors:tool/__check_block_entity", color: "gold", underlined: true}, {text: "fdoors:tool/check_block_entity", color: "gold", underlined: true}, {text: "here", color: "gold", hover_event: {action: "show_text", value: {nbt: "block_pos", storage: "utility", interpret: false}}}]}

# Copy result from macro to final score
scoreboard players operation fdoors.is_block_entity fdoors.local = fdoors.local.result fdoors.local
