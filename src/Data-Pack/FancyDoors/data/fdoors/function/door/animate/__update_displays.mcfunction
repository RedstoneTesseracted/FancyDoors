# This function updates all paired block displays at a particular animation frame
# This is run BY the individual block display entities

# Interpolate x/y/z translation
# x(t) = (xₘₐₓ/d)t + x₀

data modify storage fdoors:utility offset set from entity @s data.offset
data modify entity @s transformation.translation[0] set compute default float fdoors:door_interp/translate/x
data modify entity @s transformation.translation[1] set compute default float fdoors:door_interp/translate/y
data modify entity @s transformation.translation[2] set compute default float fdoors:door_interp/translate/z

#title @a actionbar [{"text":"fdoors.ty: "},{"score": {"name": "fdoors.ty", "objective": "fdoors.local"}}]
#tellraw @a {"nbt": "transformation.translation","entity": "@s"}


# Interpolate scale
# x(t) = ((xₘₐₓ-1)/d)t + 1
data modify entity @s transformation.scale[0] set compute default float fdoors:door_interp/scale/x
data modify entity @s transformation.scale[1] set compute default float fdoors:door_interp/scale/y
data modify entity @s transformation.scale[2] set compute default float fdoors:door_interp/scale/z


# Interpolate rotation
# x(t) = (xₘₐₓ/d)t
data modify entity @s Rotation[0] set compute default float fdoors:door_interp/yaw
data modify entity @s Rotation[1] set compute default float fdoors:door_interp/pitch


data modify entity @s start_interpolation set value 0
