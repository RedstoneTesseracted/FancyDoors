# This function updates all paired block displays at a particular animation frame
# This is run BY the individual block display entities

# TEMPORARY: set height offset based on current tick (max offset of 3 blocks)
scoreboard players operation fdoors.offset fdoors.local = fdoors.tick fdoors.local


# Multiply by precision factor and by maximum displacement
scoreboard players operation fdoors.offset fdoors.local *= fdoors.precision fdoors.global
scoreboard players operation fdoors.offset fdoors.local *= fdoors.height_offset fdoors.local
scoreboard players operation fdoors.offset fdoors.local /= fdoors.duration fdoors.local

# Offset translation
scoreboard players operation fdoors.ty fdoors.local = @s fdoors.translation.y
scoreboard players operation fdoors.ty fdoors.local *= fdoors.precision fdoors.global
scoreboard players operation fdoors.ty fdoors.local += fdoors.offset fdoors.local

#title @a actionbar [{"text":"fdoors.ty: "},{"score": {"name": "fdoors.ty", "objective": "fdoors.local"}}]
#tellraw @a {"nbt": "transformation.translation","entity": "@s"}

# Write to current transformation
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get fdoors.ty fdoors.local
data modify entity @s start_interpolation set value 0
