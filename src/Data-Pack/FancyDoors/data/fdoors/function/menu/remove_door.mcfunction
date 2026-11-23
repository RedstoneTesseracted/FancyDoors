# This function deletes a door entity

# Mark paired entity
execute unless function fdoors:menu/mark_paired_door run return 0
execute as @n[tag=fdoors.door.context] at @s run function fdoors:door/destroy
