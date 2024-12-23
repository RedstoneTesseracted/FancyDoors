# This function is run BY and AT the block selector arrow every tick

# Configure unconfigured arrows
execute if entity @s[tag=!fdoors.arrow.configured] run function fdoors:tool/configure_spawned_arrow

# Save last non-zero motion for use in "add_block" below
execute store result score fdoors.arrow.mx fdoors.local run data get entity @s Motion[0]
execute store result score fdoors.arrow.my fdoors.local run data get entity @s Motion[1]
execute store result score fdoors.arrow.mz fdoors.local run data get entity @s Motion[2]
execute unless score fdoors.arrow.mx fdoors.local matches 0 run scoreboard players operation @s fdoors.last_motion.x = fdoors.arrow.mx fdoors.local
execute unless score fdoors.arrow.my fdoors.local matches 0 run scoreboard players operation @s fdoors.last_motion.y = fdoors.arrow.my fdoors.local
execute unless score fdoors.arrow.mz fdoors.local matches 0 run scoreboard players operation @s fdoors.last_motion.z = fdoors.arrow.mz fdoors.local

# Select block once arrow has landed
execute if entity @s[nbt={inGround:1b}] run function fdoors:tool/add_block
