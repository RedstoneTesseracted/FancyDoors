# This function checks if the "fdoors.menu.transform.pitch" score is enabled
# It is run BY the entity to be checked

scoreboard players operation fdoors.local.value fdoors.local = @s fdoors.menu.transform.pitch
execute store result score fdoors.local.result fdoors.local run scoreboard players enable @s fdoors.menu.transform.pitch
execute if score fdoors.local.result fdoors.local matches 1 run scoreboard players reset @s fdoors.menu.transform.pitch
execute if score fdoors.local.result fdoors.local matches 1 run scoreboard players operation @s fdoors.menu.transform.pitch = fdoors.local.value fdoors.local
execute if score fdoors.local.result fdoors.local matches 1 run return 0
return 1
