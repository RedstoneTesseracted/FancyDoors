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
execute store result storage fdoors:utility config.trigger_args.duration int 1 run scoreboard players get @s fdoors.menu.settings.duration
execute store result storage fdoors:utility config.trigger_args.transform.x_offset int 1 run scoreboard players get @s fdoors.menu.settings.transform.offset.x
execute store result storage fdoors:utility config.trigger_args.transform.y_offset int 1 run scoreboard players get @s fdoors.menu.settings.transform.offset.y
execute store result storage fdoors:utility config.trigger_args.transform.z_offset int 1 run scoreboard players get @s fdoors.menu.settings.transform.offset.z
execute store result storage fdoors:utility config.trigger_args.transform.x_scale int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.x
execute store result storage fdoors:utility config.trigger_args.transform.y_scale int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.y
execute store result storage fdoors:utility config.trigger_args.transform.z_scale int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.z
execute store result storage fdoors:utility config.trigger_args.transform.left_rotation.axis int 1 run scoreboard players get @s fdoors.menu.settings.transform.l_rotation.axis
execute store result storage fdoors:utility config.trigger_args.transform.left_rotation.angle int 1 run scoreboard players get @s fdoors.menu.settings.transform.l_rotation.angle
execute store result storage fdoors:utility config.trigger_args.transform.right_rotation.axis int 1 run scoreboard players get @s fdoors.menu.settings.transform.r_rotation.axis
execute store result storage fdoors:utility config.trigger_args.transform.right_rotation.angle int 1 run scoreboard players get @s fdoors.menu.settings.transform.r_rotation.angle

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
