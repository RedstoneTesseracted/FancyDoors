# This function is run whenever the player puts their tool in pairing mode
# It is run using an advancement trigger

# Reset the advancement trigger
advancement revoke @s only fdoors:hidden/pair_crossbow_tool

# Get UUID of door base entity
tag @a remove fdoors.player.context
tag @s add fdoors.player.context
tag @e remove fdoors.door.context
execute as @e[type=minecraft:interaction] if function fdoors:common/left_clicked_by_context run tag @s add fdoors.door.context

data modify storage fdoors:utility uuid set value [0,0,0,0]
execute store result storage fdoors:utility uuid[0] int 1 run scoreboard players get @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid1
execute store result storage fdoors:utility uuid[1] int 1 run scoreboard players get @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid2
execute store result storage fdoors:utility uuid[2] int 1 run scoreboard players get @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid3
execute store result storage fdoors:utility uuid[3] int 1 run scoreboard players get @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid4

# Obtain door base entity
tag @e remove fdoors.door.base.context
execute as @e[tag=fdoors.door.base,type=minecraft:marker] \
if score @s fdoors.uuid1 = @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid1 \
if score @s fdoors.uuid2 = @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid2 \
if score @s fdoors.uuid3 = @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid3 \
if score @s fdoors.uuid4 = @e[type=minecraft:interaction,tag=fdoors.door.context,limit=1] fdoors.owner_uuid4 \
run tag @s add fdoors.door.base.context

# Set door owner if not set already
execute unless data entity @e[tag=fdoors.door.base.context,limit=1] data.owner_uuid run data modify entity @e[tag=fdoors.door.base.context,limit=1] data.owner_uuid set from entity @s UUID

# Reject if player does not own door... unless that player is in creative
data modify storage fdoors:utility compare set from entity @e[tag=fdoors.door.base.context,limit=1] data.owner_uuid
execute store result score fdoors.is_not_equal fdoors.local run data modify storage fdoors:utility compare set from entity @s UUID
execute if entity @s[gamemode=creative] run scoreboard players set fdoors.is_not_equal fdoors.local 0
data remove storage fdoors:utility compare
execute unless score fdoors.is_not_equal fdoors.local matches 0 run title @a actionbar {"translate": "fdoors.message.start_pairing.wrong_owner", "fallback": "You do not own this door", "color": "red"}

# Check if already paired to this door
execute store result score fdoors.is_pairing_twice fdoors.local run function fdoors:tool/is_pairing_twice

# Apply item modifier to held crossbow
execute if score fdoors.is_not_equal fdoors.local matches 0 run execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{fdoors:{tool:1b}}] run item modify entity @s weapon.mainhand fdoors:pair_crossbow_tool

# Show text and play sound
execute if score fdoors.is_not_equal fdoors.local matches 0 run title @a actionbar {"translate": "fdoors.message.start_pairing", "fallback": "Punch controller hitbox again for menu", "color": "green"}
playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1.0

# Clear context tags
tag @e remove fdoors.door.base.context
tag @a remove fdoors.player.context
tag @e remove fdoors.door.context

# Show menu if pairing twice
execute if score fdoors.is_pairing_twice fdoors.local matches 1 unless score @s fdoors.extended_menu matches 1 run function fdoors:menu/show_dialog
execute if score fdoors.is_pairing_twice fdoors.local matches 1 if score @s fdoors.extended_menu matches 1 run function fdoors:extended_menu/show_dialog
