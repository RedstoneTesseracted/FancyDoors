# This function handles the per-tick functionality of the datapack

# Handle scoreboard triggers
execute as @a[scores={fdoors.quits=1..}] run function fdoors:every_join
execute as @a[tag=fdoors.menu.open] run function fdoors:menu/tick

# Run door functionality
execute as @e[tag=fdoors.door.base] at @s run function fdoors:door/door_tick

# Run selector arrow functionality
execute as @e[type=minecraft:arrow,tag=fdoors.selector_arrow] at @s run function fdoors:tool/arrow_tick
