# Plays a sound based on how the door's movement just changed
# Run BY and AT the base door entity

# Stopped opening (either finished or interrupted)
execute if score @s fdoors.animation.old_delta matches 1 unless score @s fdoors.animation.delta matches 1 run function fdoors:door/playsound with entity @s data.sounds.finish_open

# Stopped closing (either finished or interrupted)
execute if score @s fdoors.animation.old_delta matches -1 unless score @s fdoors.animation.delta matches -1 run function fdoors:door/playsound with entity @s data.sounds.finish_close

# Started opening
execute unless score @s fdoors.animation.old_delta matches 1 if score @s fdoors.animation.delta matches 1 run function fdoors:door/playsound with entity @s data.sounds.start_open

# Started closing
execute unless score @s fdoors.animation.old_delta matches -1 if score @s fdoors.animation.delta matches -1 run function fdoors:door/playsound with entity @s data.sounds.start_close
