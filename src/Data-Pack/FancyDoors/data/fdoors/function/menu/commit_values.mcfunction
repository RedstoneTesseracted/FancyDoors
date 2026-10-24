# This function commits the current settings in temporary scores to the paired door controller entity
#
# This is run BY the player

# Retrieve the "data" tag from the paired door entity
execute unless function fdoors:menu/mark_paired_door run return 0
data modify storage fdoors:utility config set from entity @n[tag=fdoors.door.context,limit=1] data

# Transfer values from scores to temporary storage
execute if score @s fdoors.menu.settings.trigger matches 0 run data modify storage fdoors:utility config.trigger set value "range"
execute if score @s fdoors.menu.settings.trigger matches 1 run data modify storage fdoors:utility config.trigger set value "block"
execute if score @s fdoors.menu.settings.trigger matches 1 run data remove storage fdoors:utility config.trigger_args.item
execute if score @s fdoors.menu.settings.trigger matches 2 run data modify storage fdoors:utility config.trigger set value "item"
execute if score @s fdoors.menu.settings.trigger matches 2 run data remove storage fdoors:utility config.trigger_args.block
execute if score @s fdoors.menu.settings.trigger matches 2 unless data storage fdoors:utility config.trigger_args.item run data modify storage fdoors:utility config.trigger_args.item set value {}
execute store result storage fdoors:utility config.trigger_args.min int 1 run scoreboard players get @s fdoors.menu.settings.range.min
execute store result storage fdoors:utility config.trigger_args.max int 1 run scoreboard players get @s fdoors.menu.settings.range.max
execute store result storage fdoors:utility config.duration int 1 run scoreboard players get @s fdoors.menu.settings.duration
execute store result storage fdoors:utility config.transform.translation[0] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.x
execute store result storage fdoors:utility config.transform.translation[1] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.y
execute store result storage fdoors:utility config.transform.translation[2] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.z
execute store result storage fdoors:utility config.transform.scale[0] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.x
execute store result storage fdoors:utility config.transform.scale[1] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.y
execute store result storage fdoors:utility config.transform.scale[2] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.z
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 0 run data modify storage fdoors:utility config.transform.left_rotation.axis set value "x"
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 1 run data modify storage fdoors:utility config.transform.left_rotation.axis set value "y"
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 2 run data modify storage fdoors:utility config.transform.left_rotation.axis set value "z"
execute if score @s fdoors.menu.settings.transform.r_rotation.axis matches 0 run data modify storage fdoors:utility config.transform.right_rotation.axis set value "x"
execute if score @s fdoors.menu.settings.transform.r_rotation.axis matches 1 run data modify storage fdoors:utility config.transform.right_rotation.axis set value "y"
execute if score @s fdoors.menu.settings.transform.r_rotation.axis matches 2 run data modify storage fdoors:utility config.transform.right_rotation.axis set value "z"
execute store result storage fdoors:utility config.transform.left_rotation.angle float 0.017453292519943295 run scoreboard players get @s fdoors.menu.settings.transform.l_rotation.angle
execute store result storage fdoors:utility config.transform.right_rotation.angle float 0.017453292519943295 run scoreboard players get @s fdoors.menu.settings.transform.r_rotation.angle
execute store result storage fdoors:utility config.color.r float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.r
execute store result storage fdoors:utility config.color.g float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.g
execute store result storage fdoors:utility config.color.b float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.b

scoreboard players operation @s fdoors.menu.settings.color.r *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.r /= 99 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.g *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.g /= 99 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.b *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.b /= 99 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local = @s fdoors.menu.settings.color.r
tellraw @a {score: {name: "@s", objective: "fdoors.menu.settings.color.r"}}
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += @s fdoors.menu.settings.color.g
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += @s fdoors.menu.settings.color.b
execute store result storage fdoors:utility config.glow_color int 1 run scoreboard players get fdoors.glow_color fdoors.local

# Obtain item state if requested
execute if score @s fdoors.menu.settings.item matches 2 run data modify storage fdoors:utility item set from entity @s SelectedItem
execute if score @s fdoors.menu.settings.item matches 3 run data modify storage fdoors:utility item set from entity @s equipment.offhand
data remove storage fdoors:utility item.count
execute if score @s fdoors.menu.settings.item matches 2..3 run data modify storage fdoors:utility config.trigger_args.item set value {id: ""}
execute if score @s fdoors.menu.settings.item matches 2..3 run data modify storage fdoors:utility config.trigger_args.item.id set from storage fdoors:utility item.id
execute if score @s fdoors.menu.settings.item matches 2..3 if score @s fdoors.menu.settings.item_components matches 1 run data modify storage fdoors:utility config.trigger_args.item.components set from storage fdoors:utility item.components
data remove storage fdoors:utility item

# Obtain current block state if requested
execute if score @s fdoors.menu.settings.block matches 1.. run function fdoors:menu/block_preset

# Write data to door controller
data modify entity @n[tag=fdoors.door.context] data set from storage fdoors:utility config
tag @e[tag=fdoors.door.context,limit=1] remove fdoors.door.context

return 1
