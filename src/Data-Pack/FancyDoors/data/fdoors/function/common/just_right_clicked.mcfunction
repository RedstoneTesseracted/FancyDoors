# This function returns whether the interaction was just right-clicked
# It is run BY the interaction entity

# Get current time
execute store result score fdoors.time fdoors.local run time query gametime

# Get time last clicked
execute store result score fdoors.last_interaction fdoors.local run data get entity @s interaction.timestamp

# Return 1 if equal, 0 otherwise
execute if score fdoors.time fdoors.local = fdoors.last_interaction fdoors.local run return 1
return 0
