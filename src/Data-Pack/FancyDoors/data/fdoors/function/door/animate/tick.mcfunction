# This function handles the per-tick requirements of the door opening/closing animation
# It is run BY and AT the base door entity

# Increment/decrement animation tick based on current state
scoreboard players operation @s fdoors.animation.tick += @s fdoors.animation.delta

# Changed movement state -> play sound
execute unless score @s fdoors.animation.delta = @s fdoors.animation.old_delta run function fdoors:door/animate/sounds

# Update block display transformations if applicable
execute if predicate fdoors:do_update_block_displays run function fdoors:door/animate/update_displays
