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

#execute as @e[tag=fdoors.door.context] run tellraw @a [{"score": {"name": "@s", "objective": "fdoors.owner_uuid1"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.owner_uuid2"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.owner_uuid3"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "fdoors.owner_uuid4"}}]

# Apply item modifier to held crossbow
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{fdoors:{tool:1b}}] run item modify entity @s weapon.mainhand fdoors:pair_crossbow_tool

# Show text and play sound
title @a actionbar {"translate": "fdoors.message.start_pairing", "fallback": "Started pairing!", "color": "green"}
playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1.0

# Clear context tags
tag @a remove fdoors.player.context
tag @e remove fdoors.door.context
