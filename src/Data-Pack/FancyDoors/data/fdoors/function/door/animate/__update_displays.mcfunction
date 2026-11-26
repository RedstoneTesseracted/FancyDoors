# This function updates all paired block displays at a particular animation frame
# This is run BY the individual block display entities

data modify storage fdoors:utility transformation set value {translation: [0.0f, 0.0f, 0.0], scale: [0.0f, 0.0f, 0.0f]}

# Interpolate x/y/z translation
# x(t) = (xₘₐₓ/d)t + x₀

data modify storage fdoors:utility offset set from entity @s data.offset
data modify storage fdoors:utility transformation.translation[0] set compute default float fdoors:door_interp/translate/x
data modify storage fdoors:utility transformation.translation[1] set compute default float fdoors:door_interp/translate/y
data modify storage fdoors:utility transformation.translation[2] set compute default float fdoors:door_interp/translate/z

#title @a actionbar [{"text":"fdoors.ty: "},{"score": {"name": "fdoors.ty", "objective": "fdoors.local"}}]
#tellraw @a {"nbt": "transformation.translation","entity": "@s"}


# Interpolate scale
# x(t) = ((xₘₐₓ-1)/d)t + 1
data modify storage fdoors:utility transformation.scale[0] set compute default float fdoors:door_interp/scale/x
data modify storage fdoors:utility transformation.scale[1] set compute default float fdoors:door_interp/scale/y
data modify storage fdoors:utility transformation.scale[2] set compute default float fdoors:door_interp/scale/z


# Interpolate rotation
# x(t) = (xₘₐₓ/d)t
execute unless data storage fdoors:utility transform{yaw: 0} run data modify entity @s Rotation[0] set compute default float fdoors:door_interp/yaw
execute unless data storage fdoors:utility transform{pitch: 0} run data modify entity @s Rotation[1] set compute default float fdoors:door_interp/pitch


data modify entity @s transformation merge from storage fdoors:utility transformation
data modify entity @s start_interpolation set value 0
