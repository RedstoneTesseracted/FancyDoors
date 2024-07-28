# This function uses a recursion-based loop to replace all blocks paired to the door entity 
# It is called from fdoors:door/open/place_air
# It is run BY and AT the base door entity

# Place block at offset defined by the current (first) element
function fdoors:door/open/__place_air_loop with storage fdoors:utility unreplaced_blocks[0]

# Remove the element we just acted on and run again if elements remain
data remove storage fdoors:utility unreplaced_blocks[0]
execute if data storage fdoors:utility unreplaced_blocks[0] run function fdoors:door/open/place_air_loop
