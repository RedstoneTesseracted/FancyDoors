# This function destroys a door.  It is run BY the base door entity

# Safety first!
execute if entity @s[tag=!fdoors.door.base] run return fail

# Immediately close door and remove all block displays
execute at @s run function fdoors:door/close/finish_close

# Delete the interaction entity (if it exists)
function fdoors:door/configure/stop_await_configure

# Finally remove base door entity
kill @s
