# This function replaces all paired blocks with air in preparation for the door opening
# It uses fdoors:door/open/place_air_loop to loop over the paired blocks list
# It is run BY and AT the base door entity

# Copy the list of paired blocks to a temporary buffer
data modify storage fdoors:utility unreplaced_blocks set from entity @s data.blocks

# Replace blocks
execute if data storage fdoors:utility unreplaced_blocks[0] run function fdoors:door/open/place_air_loop

# Delete temporary buffers
data remove storage fdoors:utility unreplaced_blocks
