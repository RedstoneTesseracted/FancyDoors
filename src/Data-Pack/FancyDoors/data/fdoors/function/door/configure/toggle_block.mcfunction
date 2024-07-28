# This function adds a new block to the door
# The new block must be provided in the new_block tag under the fdoors:utility storage
# It is run BY and AT the base door entity, and is generally called from fdoors:tool/add_block

# There are three scenarios for handling adding/removing a block
#   1) No block at that position has been saved -> add the block
#   2) A block at that position has been saved, but with a different name/properties -> overwrite the block
#   3) This block has already been saved -> remove the block
#
# Basic pseudocode for this
#   exact_block_existed = check_exact_block()
#   remove_block_at_position()
#
#   If not exact_block_existed
#     add_block()
#

# Determine if the exact block already existed
# This will determine whether the block should be added back later
execute store result score fdoors.block_exists fdoors.local run function fdoors:door/configure/check_block_exists with storage fdoors:utility new_block

# Remove any existing block at position
function fdoors:door/configure/remove_block_at with storage fdoors:utility new_block

# Add block unless it existed prior
execute unless score fdoors.block_exists fdoors.local matches 1 run data modify entity @s data.blocks append from storage fdoors:utility new_block

# Visually show block if we're in configuration mode
data modify storage fdoors:utility show_block set from storage fdoors:utility new_block
execute unless score fdoors.block_exists fdoors.local matches 1 if entity @s[tag=fdoors.door.configure_ready] run function fdoors:door/configure/show_preview_block

# Clean up temporary variables/storage
scoreboard players reset fdoors.block_exists fdoors.local
data remove storage fdoors:utility show_block

