# Callback function executed whenever the player fires the block selector crossbow tool
# It is run using an advancement trigger

# Reset advancement trigger
advancement revoke @s only fdoors:hidden/use_crossbow_tool

# Configure any spawned arrow
execute as @e[type=minecraft:arrow,tag=!fdoors.selector_arrow,nbt={item:{components:{"minecraft:custom_data":{fdoors:{selector_arrow:1b}}}}}] run function fdoors:tool/configure_spawned_arrow

# Run item modifier
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{fdoors:{tool:1b}}] run item modify entity @s weapon.mainhand fdoors:recharge_crossbow_tool
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{fdoors:{tool:1b}}] run item modify entity @s weapon.offhand fdoors:recharge_crossbow_tool
