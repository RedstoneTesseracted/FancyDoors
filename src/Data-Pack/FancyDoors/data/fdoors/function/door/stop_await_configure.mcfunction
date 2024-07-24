# This function removes temporary configuration entities

scoreboard players operation fdoors.uuid1 fdoors.local = @s fdoors.uuid1
scoreboard players operation fdoors.uuid2 fdoors.local = @s fdoors.uuid2
scoreboard players operation fdoors.uuid3 fdoors.local = @s fdoors.uuid3
scoreboard players operation fdoors.uuid4 fdoors.local = @s fdoors.uuid4

# Destroy the temporary configuration interaction
execute as @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction] \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local run kill @s

execute as @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction] run say check
execute as @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction] \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local run say check 2

# Destroy all temporary block displays used to show current configuration
execute as @e[type=minecraft:block_display,tag=fdoors.door.configuration_display] \
if score @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local \
if score @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local \
if score @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local \
if score @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local run kill @s

# Update the door base entity's state tags
tag @s remove fdoors.door.configure_ready
