# This function uses a recursion-based loop to summon all block displays needed to preview the door

# Pop the first element 
data modify storage fdoors:utility show_block set from storage fdoors:utility unshown_blocks[0]
data remove storage fdoors:utility unshown_blocks[0]

# Summon the block
function fdoors:door/show_block

# Run the loop again if elements remain
execute if data storage fdoors:utility unshown_blocks[0] run function fdoors:door/summon_preview_loop
