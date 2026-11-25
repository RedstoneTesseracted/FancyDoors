# This function is used by place_block_loop to check if placing a block at the current position is blocked

# Skip this check if "regenerate doors" is enabled
execute if score fdoors.regenerate_doors fdoors.local matches 1 run return 0

# We can replace air and water
execute if block ~ ~ ~ #fdoors:door_replaceable run return 0

return 1
