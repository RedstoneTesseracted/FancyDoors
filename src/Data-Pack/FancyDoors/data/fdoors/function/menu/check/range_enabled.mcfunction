# This function checks if the "fdoors.menu.range" score is enabled
# It is run BY the entity to be checked

scoreboard players operation fdoors.local.value fdoors.local = @s fdoors.menu.range
execute store result score fdoors.local.result fdoors.local run scoreboard players enable @s fdoors.menu.range
execute if score fdoors.local.result fdoors.local matches 1 run scoreboard players reset @s fdoors.menu.range
execute if score fdoors.local.result fdoors.local matches 1 run scoreboard players operation @s fdoors.menu.range = fdoors.local.value fdoors.local
execute if score fdoors.local.result fdoors.local matches 1 run return 0
return 1
