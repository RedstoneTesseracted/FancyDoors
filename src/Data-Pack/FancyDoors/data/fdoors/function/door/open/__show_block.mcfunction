# Handles configuration of a newly spawned block display
# Called from fdoors:door/show_block

# Set tags
tag @s add fdoors.door.visual_block

# Set NBT data
data merge entity @s {interpolation_duration:1}

# Set translation
data modify storage fdoors:utility xyz set value [0, 0, 0]
data modify storage fdoors:utility xyz[0] set from storage fdoors:utility show_block.x
data modify storage fdoors:utility xyz[1] set from storage fdoors:utility show_block.y
data modify storage fdoors:utility xyz[2] set from storage fdoors:utility show_block.z
data modify entity @s transformation.translation set from storage fdoors:utility xyz
data modify entity @s block_state.Name set from storage fdoors:utility show_block.Name
data modify entity @s block_state.Properties set from storage fdoors:utility show_block.Properties

# Pair with door base
scoreboard players operation @s fdoors.owner_uuid1 = fdoors.uuid1 fdoors.local
scoreboard players operation @s fdoors.owner_uuid2 = fdoors.uuid2 fdoors.local
scoreboard players operation @s fdoors.owner_uuid3 = fdoors.uuid3 fdoors.local
scoreboard players operation @s fdoors.owner_uuid4 = fdoors.uuid4 fdoors.local

# Save translation using scoreboard to make it easier to find this entity later
execute store result score @s fdoors.translation.x run data get storage fdoors:utility show_block.x
execute store result score @s fdoors.translation.y run data get storage fdoors:utility show_block.y
execute store result score @s fdoors.translation.z run data get storage fdoors:utility show_block.z
