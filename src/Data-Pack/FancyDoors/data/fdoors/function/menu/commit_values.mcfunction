# This function commits the current settings in temporary scores to the paired door controller entity
#
# This is run BY the player

# Retrieve the "data" tag from the paired door entity
execute unless function fdoors:menu/mark_paired_door run return 0
data modify storage fdoors:utility config set from entity @n[tag=fdoors.door.context,limit=1] data

# Transfer values from scores to temporary storage
execute if score @s fdoors.menu.settings.trigger matches 0 run data modify storage fdoors:utility config.trigger.type set value "range"
execute if score @s fdoors.menu.settings.trigger matches 1 run data modify storage fdoors:utility config.trigger.type set value "block"
execute unless score @s fdoors.menu.settings.trigger matches 1 run data remove storage fdoors:utility config.trigger.args.block
execute if score @s fdoors.menu.settings.trigger matches 2 run data modify storage fdoors:utility config.trigger.type set value "item"
execute unless score @s fdoors.menu.settings.trigger matches 2 run data remove storage fdoors:utility config.trigger.args.item
execute if score @s fdoors.menu.settings.trigger matches 2 unless data storage fdoors:utility config.trigger.args.item run data modify storage fdoors:utility config.trigger.args.item set value {}
execute store result storage fdoors:utility config.trigger.args.min int 1 run scoreboard players get @s fdoors.menu.settings.range.min
execute store result storage fdoors:utility config.trigger.args.max int 1 run scoreboard players get @s fdoors.menu.settings.range.max
execute store result storage fdoors:utility config.duration int 1 run scoreboard players get @s fdoors.menu.settings.duration
execute store result storage fdoors:utility config.transform.translation[0] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.x
execute store result storage fdoors:utility config.transform.translation[1] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.y
execute store result storage fdoors:utility config.transform.translation[2] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.z
execute store result storage fdoors:utility config.transform.scale[0] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.x
execute store result storage fdoors:utility config.transform.scale[1] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.y
execute store result storage fdoors:utility config.transform.scale[2] int 0.1 run scoreboard players get @s fdoors.menu.settings.transform.scale.z
execute store result storage fdoors:utility config.transform.yaw int 1 run scoreboard players get @s fdoors.menu.settings.transform.yaw
execute store result storage fdoors:utility config.transform.pitch int 1 run scoreboard players get @s fdoors.menu.settings.transform.pitch
execute store result storage fdoors:utility config.color.r float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.r
execute store result storage fdoors:utility config.color.g float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.g
execute store result storage fdoors:utility config.color.b float 0.010101010101010102 run scoreboard players get @s fdoors.menu.settings.color.b

execute if score @s fdoors.menu.settings.sounds.start_opening.update matches 1 store result storage fdoors:utility config.sounds.start_open.pitch double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.start_opening.pitch
execute if score @s fdoors.menu.settings.sounds.start_opening.update matches 1 store result storage fdoors:utility config.sounds.start_open.volume double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.start_opening.volume
execute if score @s fdoors.menu.settings.sounds.finish_opening.update matches 1 store result storage fdoors:utility config.sounds.finish_open.pitch double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.finish_opening.pitch
execute if score @s fdoors.menu.settings.sounds.finish_opening.update matches 1 store result storage fdoors:utility config.sounds.finish_open.volume double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.finish_opening.volume
execute if score @s fdoors.menu.settings.sounds.start_closing.update matches 1 store result storage fdoors:utility config.sounds.start_close.pitch double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.start_closing.pitch
execute if score @s fdoors.menu.settings.sounds.start_closing.update matches 1 store result storage fdoors:utility config.sounds.start_close.volume double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.start_closing.volume
execute if score @s fdoors.menu.settings.sounds.finish_closing.update matches 1 store result storage fdoors:utility config.sounds.finish_close.pitch double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.finish_closing.pitch
execute if score @s fdoors.menu.settings.sounds.finish_closing.update matches 1 store result storage fdoors:utility config.sounds.finish_close.volume double 0.1 run scoreboard players get @s fdoors.menu.settings.sounds.finish_closing.volume

scoreboard players operation fdoors.sound fdoors.local = @s fdoors.menu.settings.sounds.start_opening.sound
function fdoors:menu/integer_to_sound_preset
execute if score @s fdoors.menu.settings.sounds.start_opening.update matches 1 run data modify storage fdoors:utility config.sounds.start_open.sound set from storage fdoors:utility temp.sound

scoreboard players operation fdoors.sound fdoors.local = @s fdoors.menu.settings.sounds.finish_opening.sound
function fdoors:menu/integer_to_sound_preset
execute if score @s fdoors.menu.settings.sounds.finish_opening.update matches 1 run data modify storage fdoors:utility config.sounds.finish_open.sound set from storage fdoors:utility temp.sound

scoreboard players operation fdoors.sound fdoors.local = @s fdoors.menu.settings.sounds.start_closing.sound
function fdoors:menu/integer_to_sound_preset
execute if score @s fdoors.menu.settings.sounds.start_closing.update matches 1 run data modify storage fdoors:utility config.sounds.start_close.sound set from storage fdoors:utility temp.sound

scoreboard players operation fdoors.sound fdoors.local = @s fdoors.menu.settings.sounds.finish_closing.sound
function fdoors:menu/integer_to_sound_preset
execute if score @s fdoors.menu.settings.sounds.finish_closing.update matches 1 run data modify storage fdoors:utility config.sounds.finish_close.sound set from storage fdoors:utility temp.sound

scoreboard players operation @s fdoors.menu.settings.color.r *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.r /= 99 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.g *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.g /= 99 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.b *= 255 fdoors.number
scoreboard players operation @s fdoors.menu.settings.color.b /= 99 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local = @s fdoors.menu.settings.color.r
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += @s fdoors.menu.settings.color.g
scoreboard players operation fdoors.glow_color fdoors.local *= 256 fdoors.number
scoreboard players operation fdoors.glow_color fdoors.local += @s fdoors.menu.settings.color.b
execute store result storage fdoors:utility config.glow_color int 1 run scoreboard players get fdoors.glow_color fdoors.local

# Obtain item state if requested
execute if score @s fdoors.menu.settings.item matches 2 run data modify storage fdoors:utility item set from entity @s SelectedItem
execute if score @s fdoors.menu.settings.item matches 3 run data modify storage fdoors:utility item set from entity @s equipment.offhand
data remove storage fdoors:utility item.count
execute if score @s fdoors.menu.settings.item matches 2..3 run data modify storage fdoors:utility config.trigger.args.item set value {id: ""}
execute if score @s fdoors.menu.settings.item matches 2..3 run data modify storage fdoors:utility config.trigger.args.item.id set from storage fdoors:utility item.id
execute if score @s fdoors.menu.settings.item matches 2..3 if score @s fdoors.menu.settings.item_components matches 1 run data modify storage fdoors:utility config.trigger.args.item.components set from storage fdoors:utility item.components
data remove storage fdoors:utility item

# Obtain current block state if requested
execute if score @s fdoors.menu.settings.block matches 1.. run function fdoors:menu/block_preset

# Write data to door controller
data modify entity @n[tag=fdoors.door.context] data set from storage fdoors:utility config
tag @e[tag=fdoors.door.context,limit=1] remove fdoors.door.context

return 1
