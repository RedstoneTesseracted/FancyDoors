# This function checks whether the player is pairing with a door controller twice

execute unless items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data~{fdoors:{tool:1b}}] run return 0
execute unless data entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid run return 0
data modify storage fdoors:utility test set from storage fdoors:utility uuid
execute store result score fdoors.changed fdoors.local run data modify storage fdoors:utility test set from entity @s SelectedItem.components."minecraft:custom_data".fdoors.paired_uuid
execute if score fdoors.changed fdoors.local matches 0 run return 1
return 0
