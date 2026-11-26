# This function summons a full preview of which blocks are tied to the base door entity

# Copy the blocks array to a temporary storage
data modify storage fdoors:utility unshown_blocks set from entity @s data.blocks
data modify storage fdoors:utility temp.glow_color set from entity @s data.glow_color

# Iterate over the copied array and summon each block
execute if data storage fdoors:utility unshown_blocks[0] run function fdoors:door/configure/summon_preview_loop

# Delete the temporary storage
data remove storage fdoors:utility unshown_blocks
