# This function returns whether the door passes all conditions to progress opening
# The result is returned using /return
# It is run BY and AT the base door entity

# Player in range
execute if entity @a[distance=..4,predicate=!fdoors:holding_selector_crossbow] run return 1

# Checks failed
return 0
