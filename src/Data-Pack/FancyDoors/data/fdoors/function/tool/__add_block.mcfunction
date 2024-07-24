# This function configures the newly spawned block display entity summoned in fdoors:tool/add_block

# Set tags
tag @s add fdoors.configuration_display.new
tag @s add fdoors.door.configuration_display

# Set NBT data
data merge entity @s {Glowing:1b, glow_color_override:255}

# Set translation
execute store result entity @s transformation.translation[0] float 1.0 run scoreboard players get fdoors.arrow.x fdoors.local
execute store result entity @s transformation.translation[1] float 1.0 run scoreboard players get fdoors.arrow.y fdoors.local
execute store result entity @s transformation.translation[2] float 1.0 run scoreboard players get fdoors.arrow.z fdoors.local

# Pair with door base
scoreboard players operation @s fdoors.owner_uuid1 = @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] fdoors.uuid1
scoreboard players operation @s fdoors.owner_uuid2 = @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] fdoors.uuid2
scoreboard players operation @s fdoors.owner_uuid3 = @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] fdoors.uuid3
scoreboard players operation @s fdoors.owner_uuid4 = @e[tag=fdoors.door.base,tag=fdoors.door.context,limit=1] fdoors.uuid4
