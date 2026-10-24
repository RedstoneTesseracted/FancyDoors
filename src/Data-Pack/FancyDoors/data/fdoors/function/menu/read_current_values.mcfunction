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
scoreboard players set @s fdoors.menu.settings.transform.l_rotation.axis 0
scoreboard players set @s fdoors.menu.settings.transform.l_rotation.angle 0
scoreboard players set @s fdoors.menu.settings.transform.r_rotation.axis 0
scoreboard players set @s fdoors.menu.settings.transform.r_rotation.angle 0

# Set values if present
execute if data storage fdoors:utility config{trigger: "range"} run scoreboard players set @s fdoors.menu.settings.trigger 0
execute if data storage fdoors:utility config{trigger: "block"} run scoreboard players set @s fdoors.menu.settings.trigger 1
execute if data storage fdoors:utility config{trigger: "item"} run scoreboard players set @s fdoors.menu.settings.trigger 2
execute if data storage fdoors:utility config.trigger_args.min store result score @s fdoors.menu.settings.range.min run data get storage fdoors:utility config.trigger_args.min
execute if data storage fdoors:utility config.trigger_args.max store result score @s fdoors.menu.settings.range.max run data get storage fdoors:utility config.trigger_args.max
execute if data storage fdoors:utility config.duration store result score @s fdoors.menu.settings.duration run data get storage fdoors:utility config.duration
execute if data storage fdoors:utility config.transform.translation[0] store result score @s fdoors.menu.settings.transform.offset.x run data get storage fdoors:utility config.transform.translation[0] 10.0
execute if data storage fdoors:utility config.transform.translation[1] store result score @s fdoors.menu.settings.transform.offset.y run data get storage fdoors:utility config.transform.translation[1] 10.0
execute if data storage fdoors:utility config.transform.translation[2] store result score @s fdoors.menu.settings.transform.offset.z run data get storage fdoors:utility config.transform.translation[2] 10.0
execute if data storage fdoors:utility config.transform.scale[0] store result score @s fdoors.menu.settings.transform.scale.x run data get storage fdoors:utility config.transform.scale[0] 10.0
execute if data storage fdoors:utility config.transform.scale[1] store result score @s fdoors.menu.settings.transform.scale.y run data get storage fdoors:utility config.transform.scale[1] 10.0
execute if data storage fdoors:utility config.transform.scale[2] store result score @s fdoors.menu.settings.transform.scale.z run data get storage fdoors:utility config.transform.scale[2] 10.0
execute if data storage fdoors:utility config.transform.left_rotation{axis: "x"} run scoreboard players set @s fdoors.menu.settings.transform.l_rotation.axis 0
execute if data storage fdoors:utility config.transform.left_rotation{axis: "y"} run scoreboard players set @s fdoors.menu.settings.transform.l_rotation.axis 1
execute if data storage fdoors:utility config.transform.left_rotation{axis: "z"} run scoreboard players set @s fdoors.menu.settings.transform.l_rotation.axis 2
execute if data storage fdoors:utility config.transform.right_rotation{axis: "x"} run scoreboard players set @s fdoors.menu.settings.transform.r_rotation.axis 0
execute if data storage fdoors:utility config.transform.right_rotation{axis: "y"} run scoreboard players set @s fdoors.menu.settings.transform.r_rotation.axis 1
execute if data storage fdoors:utility config.transform.right_rotation{axis: "z"} run scoreboard players set @s fdoors.menu.settings.transform.r_rotation.axis 2
execute if data storage fdoors:utility config.transform.left_rotation.angle store result score @s fdoors.menu.settings.transform.l_rotation.angle run data get storage fdoors:utility config.transform.left_rotation.angle 57.29577951308232
execute if data storage fdoors:utility config.transform.right_rotation.angle store result score @s fdoors.menu.settings.transform.r_rotation.angle run data get storage fdoors:utility config.transform.right_rotation.angle 57.29577951308232

return 1
