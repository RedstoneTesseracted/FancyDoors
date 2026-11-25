# Function macro called from fdoors:door/close/place_block_loop to place block with arguments
$execute positioned ~$(x) ~$(y) ~$(z) if function fdoors:door/close/place_block_blocked run return -1
$setblock ~$(x) ~$(y) ~$(z) $(id)$(state_string)
return 1
