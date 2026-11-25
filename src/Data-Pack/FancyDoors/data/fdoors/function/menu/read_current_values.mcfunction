# This function reads the door's current configuration into a bunch of player scoreboards.
# These scoreboards can then be safely modified with the option to save or discard
#
# This is run BY the player

# Retrieve the "data" tag from the paired door entity
execute unless function fdoors:menu/mark_paired_door run return 0
data modify storage fdoors:utility config set from entity @n[tag=fdoors.door.context,limit=1] data
tag @e[tag=fdoors.door.context,limit=1] remove fdoors.door.context

# Set default values
scoreboard players set @s fdoors.menu.settings.trigger 0
scoreboard players set @s fdoors.menu.settings.range.min 0
scoreboard players set @s fdoors.menu.settings.range.max 5
scoreboard players set @s fdoors.menu.settings.block 0
scoreboard players set @s fdoors.menu.settings.item 0
scoreboard players set @s fdoors.menu.settings.item_components 1
scoreboard players set @s fdoors.menu.settings.duration 10
scoreboard players set @s fdoors.menu.settings.transform.offset.x 0
scoreboard players set @s fdoors.menu.settings.transform.offset.y 3
scoreboard players set @s fdoors.menu.settings.transform.offset.z 0
scoreboard players set @s fdoors.menu.settings.transform.scale.x 10
scoreboard players set @s fdoors.menu.settings.transform.scale.y 10
scoreboard players set @s fdoors.menu.settings.transform.scale.z 10
scoreboard players set @s fdoors.menu.settings.transform.yaw 0
scoreboard players set @s fdoors.menu.settings.transform.pitch 0
scoreboard players set @s fdoors.menu.settings.sounds.start_opening.pitch 10
scoreboard players set @s fdoors.menu.settings.sounds.start_opening.volume 10
scoreboard players set @s fdoors.menu.settings.sounds.start_opening.sound 0
scoreboard players set @s fdoors.menu.settings.sounds.start_opening.update 0
scoreboard players set @s fdoors.menu.settings.sounds.finish_opening.pitch 10
scoreboard players set @s fdoors.menu.settings.sounds.finish_opening.volume 10
scoreboard players set @s fdoors.menu.settings.sounds.finish_opening.sound 0
scoreboard players set @s fdoors.menu.settings.sounds.finish_opening.update 0
scoreboard players set @s fdoors.menu.settings.sounds.start_closing.pitch 10
scoreboard players set @s fdoors.menu.settings.sounds.start_closing.volume 10
scoreboard players set @s fdoors.menu.settings.sounds.start_closing.sound 0
scoreboard players set @s fdoors.menu.settings.sounds.start_closing.update 0
scoreboard players set @s fdoors.menu.settings.sounds.finish_closing.pitch 10
scoreboard players set @s fdoors.menu.settings.sounds.finish_closing.volume 10
scoreboard players set @s fdoors.menu.settings.sounds.finish_closing.sound 0
scoreboard players set @s fdoors.menu.settings.sounds.finish_closing.update 0
scoreboard players set @s fdoors.menu.settings.color.r 0
scoreboard players set @s fdoors.menu.settings.color.g 99
scoreboard players set @s fdoors.menu.settings.color.b 0

# Set values if present
execute if data storage fdoors:utility config.trigger{type: "range"} run scoreboard players set @s fdoors.menu.settings.trigger 0
execute if data storage fdoors:utility config.trigger{type: "block"} run scoreboard players set @s fdoors.menu.settings.trigger 1
execute if data storage fdoors:utility config.trigger{type: "item"} run scoreboard players set @s fdoors.menu.settings.trigger 2
execute if data storage fdoors:utility config.trigger.args.min store result score @s fdoors.menu.settings.range.min run data get storage fdoors:utility config.trigger.args.min
execute if data storage fdoors:utility config.trigger.args.max store result score @s fdoors.menu.settings.range.max run data get storage fdoors:utility config.trigger.args.max
execute if data storage fdoors:utility config.duration store result score @s fdoors.menu.settings.duration run data get storage fdoors:utility config.duration
execute if data storage fdoors:utility config.color.r store result score @s fdoors.menu.settings.color.r run data get storage fdoors:utility config.color.r 99
execute if data storage fdoors:utility config.color.g store result score @s fdoors.menu.settings.color.g run data get storage fdoors:utility config.color.g 99
execute if data storage fdoors:utility config.color.b store result score @s fdoors.menu.settings.color.b run data get storage fdoors:utility config.color.b 99
execute if data storage fdoors:utility config.transform.translation[0] store result score @s fdoors.menu.settings.transform.offset.x run data get storage fdoors:utility config.transform.translation[0] 10.0
execute if data storage fdoors:utility config.transform.translation[1] store result score @s fdoors.menu.settings.transform.offset.y run data get storage fdoors:utility config.transform.translation[1] 10.0
execute if data storage fdoors:utility config.transform.translation[2] store result score @s fdoors.menu.settings.transform.offset.z run data get storage fdoors:utility config.transform.translation[2] 10.0
execute if data storage fdoors:utility config.transform.scale[0] store result score @s fdoors.menu.settings.transform.scale.x run data get storage fdoors:utility config.transform.scale[0] 10.0
execute if data storage fdoors:utility config.transform.scale[1] store result score @s fdoors.menu.settings.transform.scale.y run data get storage fdoors:utility config.transform.scale[1] 10.0
execute if data storage fdoors:utility config.transform.scale[2] store result score @s fdoors.menu.settings.transform.scale.z run data get storage fdoors:utility config.transform.scale[2] 10.0
execute if data storage fdoors:utility config.transform.yaw store result score @s fdoors.menu.settings.transform.yaw run data get storage fdoors:utility config.transform.yaw
execute if data storage fdoors:utility config.transform.pitch store result score @s fdoors.menu.settings.transform.pitch run data get storage fdoors:utility config.transform.pitch
execute if data storage fdoors:utility config.sounds.start_open.pitch store result score @s fdoors.menu.settings.sounds.start_opening.pitch run data get storage fdoors:utility config.sounds.start_open.pitch 10.0
execute if data storage fdoors:utility config.sounds.start_open.volume store result score @s fdoors.menu.settings.sounds.start_opening.volume run data get storage fdoors:utility config.sounds.start_open.volume 10.0
execute if data storage fdoors:utility config.sounds.finish_open.pitch store result score @s fdoors.menu.settings.sounds.finish_opening.pitch run data get storage fdoors:utility config.sounds.finish_open.pitch 10.0
execute if data storage fdoors:utility config.sounds.finish_open.volume store result score @s fdoors.menu.settings.sounds.finish_opening.volume run data get storage fdoors:utility config.sounds.finish_open.volume 10.0
execute if data storage fdoors:utility config.sounds.start_close.pitch store result score @s fdoors.menu.settings.sounds.start_closing.pitch run data get storage fdoors:utility config.sounds.start_close.pitch 10.0
execute if data storage fdoors:utility config.sounds.start_close.volume store result score @s fdoors.menu.settings.sounds.start_closing.volume run data get storage fdoors:utility config.sounds.start_close.volume 10.0
execute if data storage fdoors:utility config.sounds.finish_close.pitch store result score @s fdoors.menu.settings.sounds.finish_closing.pitch run data get storage fdoors:utility config.sounds.finish_close.pitch 10.0
execute if data storage fdoors:utility config.sounds.finish_close.volume store result score @s fdoors.menu.settings.sounds.finish_closing.volume run data get storage fdoors:utility config.sounds.finish_close.volume 10.0

data remove storage fdoors:utility temp.sound
data modify storage fdoors:utility temp.sound set from storage fdoors:utility config.sounds.start_open.sound
execute store result score @s fdoors.menu.settings.sounds.start_opening.sound run function fdoors:menu/sound_preset_to_integer

data remove storage fdoors:utility temp.sound
data modify storage fdoors:utility temp.sound set from storage fdoors:utility config.sounds.finish_open.sound
execute store result score @s fdoors.menu.settings.sounds.finish_opening.sound run function fdoors:menu/sound_preset_to_integer

data remove storage fdoors:utility temp.sound
data modify storage fdoors:utility temp.sound set from storage fdoors:utility config.sounds.start_close.sound
execute store result score @s fdoors.menu.settings.sounds.start_closing.sound run function fdoors:menu/sound_preset_to_integer

data remove storage fdoors:utility temp.sound
data modify storage fdoors:utility temp.sound set from storage fdoors:utility config.sounds.finish_close.sound
execute store result score @s fdoors.menu.settings.sounds.finish_closing.sound run function fdoors:menu/sound_preset_to_integer

return 1
