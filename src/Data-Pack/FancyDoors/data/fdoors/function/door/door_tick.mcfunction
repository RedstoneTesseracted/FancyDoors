# Root function run BY and AT all base door entities

# Create interaction if a player holding a tool is nearby
execute if entity @a[distance=..8,predicate=fdoors:holding_selector_crossbow] if entity @s[tag=!fdoors.door.configure_ready] run function fdoors:door/configure/await_configure
execute unless entity @a[distance=..8,predicate=fdoors:holding_selector_crossbow] if entity @s[tag=fdoors.door.configure_ready] run function fdoors:door/configure/stop_await_configure

# Update state tags
# Move current animation delta to old_delta
scoreboard players operation @s fdoors.animation.old_delta = @s fdoors.animation.delta

# Check whether door should be triggered and open/close accordingly
scoreboard players set @s fdoors.animation.delta -1
execute if function fdoors:door/is_triggered run scoreboard players set @s fdoors.animation.delta 1

# Halt if door is fully opened/closed
execute if score @s fdoors.animation.delta matches 1 if score @s fdoors.animation.tick > @s fdoors.animation.duration run scoreboard players set @s fdoors.animation.delta 0
execute if score @s fdoors.animation.delta matches -1 unless score @s fdoors.animation.tick matches 0.. run scoreboard players set @s fdoors.animation.delta 0

# Update animation
function fdoors:door/animate/tick

# Begin opening if applicable
execute if score @s fdoors.animation.delta matches 1 if score @s fdoors.animation.tick matches 0 run function fdoors:door/open/begin_open
# Finish closing if applicable
execute if score @s fdoors.animation.old_delta matches -1 unless score @s fdoors.animation.tick matches 0.. run function fdoors:door/close/finish_close

# Show particles on the interaction entity when in configuration mode
execute if entity @s[tag=fdoors.door.configure_ready] positioned ~-0.5 ~ ~-0.5 run function fdoors:door/configure/show_outline
