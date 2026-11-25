# Handles "fdoors.menu.goto" trigger score results

tag @s remove fdoors.menu.expect.goto
#tag @s remove fdoors.menu.open

# Go directly to menu
execute if score @s fdoors.menu.goto matches 1 run return run function fdoors:menu/door_config/root
execute if score @s fdoors.menu.goto matches 2 if score @s fdoors.menu.settings.trigger matches 0 run return run function fdoors:menu/door_config/trigger_range
execute if score @s fdoors.menu.goto matches 2 if score @s fdoors.menu.settings.trigger matches 1 run return run function fdoors:menu/door_config/trigger_block
execute if score @s fdoors.menu.goto matches 2 if score @s fdoors.menu.settings.trigger matches 2 run return run function fdoors:menu/door_config/trigger_item
execute if score @s fdoors.menu.goto matches 3 run return run function fdoors:menu/door_config/duration
execute if score @s fdoors.menu.goto matches 4 run return run function fdoors:menu/door_config/transform
execute if score @s fdoors.menu.goto matches 41 run return run function fdoors:menu/door_config/transform/offset
execute if score @s fdoors.menu.goto matches 411 run return run function fdoors:menu/door_config/transform/offset/x
execute if score @s fdoors.menu.goto matches 412 run return run function fdoors:menu/door_config/transform/offset/y
execute if score @s fdoors.menu.goto matches 413 run return run function fdoors:menu/door_config/transform/offset/z
execute if score @s fdoors.menu.goto matches 42 run return run function fdoors:menu/door_config/transform/scale
execute if score @s fdoors.menu.goto matches 43 run return run function fdoors:menu/door_config/transform/yaw
execute if score @s fdoors.menu.goto matches 44 run return run function fdoors:menu/door_config/transform/pitch
execute if score @s fdoors.menu.goto matches 5 run return run function fdoors:menu/door_config/sounds
execute if score @s fdoors.menu.goto matches 51 run return run function fdoors:menu/door_config/sounds/start_opening
execute if score @s fdoors.menu.goto matches 52 run return run function fdoors:menu/door_config/sounds/finish_opening
execute if score @s fdoors.menu.goto matches 53 run return run function fdoors:menu/door_config/sounds/start_closing
execute if score @s fdoors.menu.goto matches 54 run return run function fdoors:menu/door_config/sounds/finish_closing
execute if score @s fdoors.menu.goto matches 6 run return run function fdoors:menu/door_config/color
execute if score @s fdoors.menu.goto matches -1 run return run function fdoors:menu/door_config/confirm_destroy
execute if score @s fdoors.menu.goto matches -2 run return run function fdoors:menu/commit_values
execute if score @s fdoors.menu.goto matches -3 run return run function fdoors:menu/cancel
