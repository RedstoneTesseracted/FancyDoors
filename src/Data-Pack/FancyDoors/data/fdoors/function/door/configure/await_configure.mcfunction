# This function summons an interaction entity on the door base to allow for user configuration

# Update state tags for the door base
tag @s add fdoors.door.configure_ready

# Summon and pair the interaction entity to the base
summon minecraft:interaction ~ ~ ~ {Tags:["fdoors.door.configure_interaction","fdoors.door.configure_interaction.new"], width:0.9f, height:0.9f}

execute store result score @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction.new] fdoors.owner_uuid1 run data get entity @s UUID[0]
execute store result score @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction.new] fdoors.owner_uuid2 run data get entity @s UUID[1]
execute store result score @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction.new] fdoors.owner_uuid3 run data get entity @s UUID[2]
execute store result score @e[type=minecraft:interaction,tag=fdoors.door.configure_interaction.new] fdoors.owner_uuid4 run data get entity @s UUID[3]

# Summon the preview
data modify storage fdoors:utility temp.glow_color set value 255
execute if data entity @s data.glow_color run data modify storage fdoors:utility temp.glow_color set from entity @s data.glow_color
function fdoors:door/configure/summon_preview

# Clear the new interaction entity tags
tag @e[tag=fdoors.door.configure_interaction.new] remove fdoors.door.configure_interaction.new
