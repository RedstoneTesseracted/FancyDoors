# Checks if the block displays should be updated this tick
# This is run BY the base door entity

# Conditions for display entities to have their position updated:
#   Tick is NOT <= 0 while moving upwards      -> Tick > 0 AND moving upwards
#   Tick is NOT >= max while moving downwards  -> Tick < max AND moving downwards
#   Tick is <= max while moving upwards
#   Tick is >= 0 while moving downwards
#   
#   While moving upwards:   0 < tick <= max
#   While moving downwards: 0 <= tick < max
#   


#execute if score @s fdoors.animation.delta matches 1 if score

# Is still moving - yes
execute unless score @s fdoors.animation.delta matches 0 run return 1
#execute unless score @s fdoors.animation.old_delta matches 0 run return 1

# No
return 0
