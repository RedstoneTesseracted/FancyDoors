# This function uses a recursion-based loop to place all blocks paired to this door back into their original position
# It is run BY and AT the base door entity, and is called from fdoors:door/close/place_blocks

# Place block
function fdoors:door/close/__place_block_loop with storage fdoors:utility unplaced_blocks[0]

# Remove current element (first index) and run again if elements remain
data remove storage fdoors:utility unplaced_blocks[0]
execute if data storage fdoors:utility unplaced_blocks[0] run function fdoors:door/close/place_block_loop
