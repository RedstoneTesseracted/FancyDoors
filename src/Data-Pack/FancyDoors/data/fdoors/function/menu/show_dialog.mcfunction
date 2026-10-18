# Opens the door configuration dialog

# Read current settings from door
execute store result score fdoors.door_exists fdoors.local run function fdoors:menu/read_current_values
execute if score fdoors.door_exists fdoors.local matches 0 run title @s actionbar {translate: "fdoors.menu.open.no_door_exists", fallback: "No paired door", color: "red"}
execute if score fdoors.door_exists fdoors.local matches 0 run return fail

# Show menu
function fdoors:menu/door_config/root
