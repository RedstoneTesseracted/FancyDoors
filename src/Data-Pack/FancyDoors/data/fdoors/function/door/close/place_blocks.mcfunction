# This function handles restoring the door's physical blocks after closing
# It uses fdoors:door/close/place_block_loop to loop over the door's list of blocks
#
# It is run BY and AT the base door entity

# Copy blocks list
data modify storage fdoors:utility unplaced_blocks set from entity @s data.blocks

# Run loop
execute if data storage fdoors:utility unplaced_blocks[0] run function fdoors:door/close/place_block_loop

# Clear up temporary storage
data remove storage fdoors:utility unplaced_blocks
