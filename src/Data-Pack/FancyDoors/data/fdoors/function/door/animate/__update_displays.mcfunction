# This function updates all paired block displays at a particular animation frame
# This is run BY the individual block display entities

# Interpolate x/y/z translation
# x(t) = (xₘₐₓ/d)t + x₀

execute store result score fdoors.offset.x fdoors.local run data get storage fdoors:utility transform.translation[0] 100.0
execute store result score fdoors.offset.y fdoors.local run data get storage fdoors:utility transform.translation[1] 100.0
execute store result score fdoors.offset.z fdoors.local run data get storage fdoors:utility transform.translation[2] 100.0
scoreboard players operation fdoors.offset.x fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.y fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.z fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.x fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.offset.y fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.offset.z fdoors.local /= fdoors.duration fdoors.local

execute store result score fdoors.tx fdoors.local run data get entity @s data.offset.x 100.0
execute store result score fdoors.ty fdoors.local run data get entity @s data.offset.y 100.0
execute store result score fdoors.tz fdoors.local run data get entity @s data.offset.z 100.0
scoreboard players operation fdoors.tx fdoors.local += fdoors.offset.x fdoors.local
scoreboard players operation fdoors.ty fdoors.local += fdoors.offset.y fdoors.local
scoreboard players operation fdoors.tz fdoors.local += fdoors.offset.z fdoors.local

#title @a actionbar [{"text":"fdoors.ty: "},{"score": {"name": "fdoors.ty", "objective": "fdoors.local"}}]
#tellraw @a {"nbt": "transformation.translation","entity": "@s"}

# Write to current transformation
execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get fdoors.tx fdoors.local
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get fdoors.ty fdoors.local
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get fdoors.tz fdoors.local
data modify entity @s start_interpolation set value 0
