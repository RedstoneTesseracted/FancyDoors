# Applies the result from the extended menu
#
# The following arguments are passed in as macro arguments:
# ✔trigger_type
# ✔trigger_range_min
# ✔trigger_range_max
# ✔trigger_block
# ✔trigger_item
# ✔trigger_item_components_raw
# ✔trigger_item_components_set
# ✔duration
# ✔transform_offset_x
# ✔transform_offset_y
# ✔transform_offset_z
# ✔transform_scale_x
# ✔transform_scale_y
# ✔transform_scale_z
# ✔transform_left_rotation_axis
# ✔transform_left_rotation_angle
# ✔transform_right_rotation_axis
# ✔transform_right_rotation_angle
# ✔start_open_sound
# ✔start_open_sound_pitch
# ✔start_open_sound_volume
# ✔finish_open_sound
# ✔finish_open_sound_pitch
# ✔finish_open_sound_volume
# ✔start_close_sound
# ✔start_close_sound_pitch
# ✔start_close_sound_volume
# ✔finish_close_sound
# ✔finish_close_sound_pitch
# ✔finish_close_sound_volume
# ✔outline_color_red
# ✔outline_color_green
# ✔outline_color_blue
# ✔remove_door

# Obtain currently paired door entity
execute unless function fdoors:menu/mark_paired_door run return 0

# Special behavior: remove door
$scoreboard players set fdoors.remove_door fdoors.local $(remove_door)
execute if score fdoors.remove_door fdoors.local matches 1 as @n[tag=fdoors.door.context] at @s run function fdoors:door/destroy
execute if score fdoors.remove_door fdoors.local matches 1 run return 0

# Build data to be merged
data modify storage fdoors:utility merged_config set value {trigger: {type: "", args: {}}, transform: {}, sounds: {}, color: {r: 0.0d, g: 0.0d, b: 0.0d}}
$data modify storage fdoors:utility merged_config.duration set value $(duration)
$data modify storage fdoors:utility merged_config.trigger.type set value $(trigger_type)
$data modify storage fdoors:utility merged_config.trigger.args.min set value $(trigger_range_min)
$data modify storage fdoors:utility merged_config.trigger.args.max set value $(trigger_range_max)
$data modify storage fdoors:utility merged_config.trigger.args.block set value "$(trigger_block)"
$execute unless data storage fdoors:utility merged_config.trigger.args.item.id run data modify storage fdoors:utility merged_config.trigger.args.item set value {id: "$(trigger_item)"}
$execute if data storage fdoors:utility merged_config.trigger.args.item.id run data modify storage fdoors:utility merged_config.trigger.args.item.id set value "$(trigger_item)"
$data modify storage fdoors:utility merged_config.transform.translation set value [$(transform_offset_x), $(transform_offset_y), $(transform_offset_z)]
$data modify storage fdoors:utility merged_config.transform.scale set value [$(transform_scale_x), $(transform_scale_y), $(transform_scale_z)]
$data modify storage fdoors:utility merged_config.transform.left_rotation set value {axis: "$(transform_left_rotation_axis)", angle: 0.0}
$data modify storage fdoors:utility merged_config.transform.right_rotation set value {axis: "$(transform_right_rotation_axis)", angle: 0.0}
$data modify storage fdoors:utility merged_config.sounds.start_open set value {sound: "$(start_open_sound)", pitch: $(start_open_sound_pitch), volume: $(start_open_sound_volume)}
$data modify storage fdoors:utility merged_config.sounds.finish_open set value {sound: "$(finish_open_sound)", pitch: $(finish_open_sound_pitch), volume: $(finish_open_sound_volume)}
$data modify storage fdoors:utility merged_config.sounds.start_close set value {sound: "$(start_close_sound)", pitch: $(start_close_sound_pitch), volume: $(start_close_sound_volume)}
$data modify storage fdoors:utility merged_config.sounds.finish_close set value {sound: "$(finish_close_sound)", pitch: $(finish_close_sound_pitch), volume: $(finish_close_sound_volume)}

# Handle special values
# Optionally set components from main hand/offhand
$scoreboard players set fdoors.trigger_item_components_set fdoors.local $(trigger_item_components_set)
execute if score fdoors.trigger_item_components_set fdoors.local matches 1 run data modify storage fdoors:utility merged_config.trigger.args.item.components set from entity @s SelectedItem.components
execute if score fdoors.trigger_item_components_set fdoors.local matches 2 run data modify storage fdoors:utility merged_config.trigger.args.item.components set from entity @s equipment.offhand.components
execute if score fdoors.trigger_item_components_set fdoors.local matches 3 run data remove storage fdoors:utility merged_config.trigger.args.item.components

# Convert angles in degrees to radians
$scoreboard players set fdoors.left_rotation_angle fdoors.local $(transform_left_rotation_angle)
$scoreboard players set fdoors.right_rotation_angle fdoors.local $(transform_right_rotation_angle)
execute store result storage fdoors:utility merged_config.transform.left_rotation.angle float 0.017453292519943295 run scoreboard players get fdoors.left_rotation_angle fdoors.local
execute store result storage fdoors:utility merged_config.transform.right_rotation.angle float 0.017453292519943295 run scoreboard players get fdoors.right_rotation_angle fdoors.local

# Convert [0, 255] color values to [0, 1]
$scoreboard players set fdoors.color.red fdoors.local $(outline_color_red)
$scoreboard players set fdoors.color.green fdoors.local $(outline_color_green)
$scoreboard players set fdoors.color.blue fdoors.local $(outline_color_blue)
execute store result storage fdoors:utility merged_config.color.r float 0.00392156862745098 run scoreboard players get fdoors.color.red fdoors.local
execute store result storage fdoors:utility merged_config.color.g float 0.00392156862745098 run scoreboard players get fdoors.color.green fdoors.local
execute store result storage fdoors:utility merged_config.color.b float 0.00392156862745098 run scoreboard players get fdoors.color.blue fdoors.local

scoreboard players operation fdoors.glow_color fdoors.local = fdoors.color.red fdoors.local
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += fdoors.color.green fdoors.local
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += fdoors.color.blue fdoors.local
execute store result storage fdoors:utility merged_config.glow_color int 1 run scoreboard players get fdoors.glow_color fdoors.local

# Write to door entity and do some last-minute clean up
data modify entity @n[tag=fdoors.door.context] data merge from storage fdoors:utility merged_config
execute as @n[tag=fdoors.door.context] unless data entity @s data.trigger{type: "item"} run data remove entity @s data.trigger.args.item
execute as @n[tag=fdoors.door.context] unless data entity @s data.trigger{type: "block"} run data remove entity @s data.trigger.args.block
tag @e[tag=fdoors.door.context] remove fdoors.door.context
