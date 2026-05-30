# This function returns whether the door passes all conditions to progress opening
# The result is returned using /return
# It is run BY and AT the base door entity

return run function fdoors:door/__is_triggered with entity @s data.trigger_args
