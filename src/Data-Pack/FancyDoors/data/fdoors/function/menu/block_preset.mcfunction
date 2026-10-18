# This function is used to convert a number to a block state trigger preset

execute if score @s fdoors.menu.settings.block matches 1 run data modify storage fdoors:utility config.trigger_args.block set value "minecraft:redstone_lamp[lit=true]"
execute if score @s fdoors.menu.settings.block matches 2 run data modify storage fdoors:utility config.trigger_args.block set value "minecraft:redstone_lamp[lit=false]"
execute if score @s fdoors.menu.settings.block matches 3 run data modify storage fdoors:utility config.trigger_args.block set value "#minecraft:pressure_plates[powered=true]"
execute if score @s fdoors.menu.settings.block matches 4 run data modify storage fdoors:utility config.trigger_args.block set value "#minecraft:pressure_plates[powered=false]"
execute if score @s fdoors.menu.settings.block matches 5 run data modify storage fdoors:utility config.trigger_args.block set value "#minecraft:buttons[powered=true]"
execute if score @s fdoors.menu.settings.block matches 6 run data modify storage fdoors:utility config.trigger_args.block set value "#minecraft:buttons[powered=false]"
execute if score @s fdoors.menu.settings.block matches 7 run data modify storage fdoors:utility config.trigger_args.block set value "minecraft:air"
