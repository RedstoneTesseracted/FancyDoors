# This function updates all paired block displays at a particular animation frame
# This is run BY the individual block display entities

# Interpolate x/y/z translation
# x(t) = (xₘₐₓ/d)t + x₀

execute store result score fdoors.offset.x fdoors.local run data get storage fdoors:utility transform.translation[0] 1000.0
execute store result score fdoors.offset.y fdoors.local run data get storage fdoors:utility transform.translation[1] 1000.0
execute store result score fdoors.offset.z fdoors.local run data get storage fdoors:utility transform.translation[2] 1000.0
scoreboard players operation fdoors.offset.x fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.y fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.z fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.offset.x fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.offset.y fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.offset.z fdoors.local /= fdoors.duration fdoors.local

execute store result score fdoors.tx fdoors.local run data get entity @s data.offset.x 1000.0
execute store result score fdoors.ty fdoors.local run data get entity @s data.offset.y 1000.0
execute store result score fdoors.tz fdoors.local run data get entity @s data.offset.z 1000.0
scoreboard players operation fdoors.tx fdoors.local += fdoors.offset.x fdoors.local
scoreboard players operation fdoors.ty fdoors.local += fdoors.offset.y fdoors.local
scoreboard players operation fdoors.tz fdoors.local += fdoors.offset.z fdoors.local

#title @a actionbar [{"text":"fdoors.ty: "},{"score": {"name": "fdoors.ty", "objective": "fdoors.local"}}]
#tellraw @a {"nbt": "transformation.translation","entity": "@s"}

# Write to current transformation
execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get fdoors.tx fdoors.local
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get fdoors.ty fdoors.local
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get fdoors.tz fdoors.local


# Interpolate scale
# x(t) = ((xₘₐₓ-1)/d)t + 1
execute store result score fdoors.scale.x fdoors.local run data get storage fdoors:utility transform.scale[0] 1000.0
execute store result score fdoors.scale.y fdoors.local run data get storage fdoors:utility transform.scale[1] 1000.0
execute store result score fdoors.scale.z fdoors.local run data get storage fdoors:utility transform.scale[2] 1000.0
scoreboard players remove fdoors.scale.x fdoors.local 1000
scoreboard players remove fdoors.scale.y fdoors.local 1000
scoreboard players remove fdoors.scale.z fdoors.local 1000
scoreboard players operation fdoors.scale.x fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.scale.y fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.scale.z fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.scale.x fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.scale.y fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.scale.z fdoors.local /= fdoors.duration fdoors.local
scoreboard players add fdoors.scale.x fdoors.local 1000
scoreboard players add fdoors.scale.y fdoors.local 1000
scoreboard players add fdoors.scale.z fdoors.local 1000

# Write to current transformation
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get fdoors.scale.x fdoors.local
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get fdoors.scale.y fdoors.local
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get fdoors.scale.z fdoors.local


# Interpolate rotation
execute store result score fdoors.yaw fdoors.local run data get storage fdoors:utility transform.yaw 1000.0
execute store result score fdoors.pitch fdoors.local run data get storage fdoors:utility transform.pitch 1000.0

scoreboard players operation fdoors.yaw fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.pitch fdoors.local *= fdoors.tick fdoors.local
scoreboard players operation fdoors.yaw fdoors.local /= fdoors.duration fdoors.local
scoreboard players operation fdoors.pitch fdoors.local /= fdoors.duration fdoors.local

# Write to current transformation
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get fdoors.yaw fdoors.local
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get fdoors.pitch fdoors.local


data modify entity @s start_interpolation set value 0
