# This function is run BY and AT the block selector arrow every tick

# Configure unconfigured arrows
execute if entity @s[tag=!fdoors.arrow.configured] run function fdoors:tool/configure_spawned_arrow

# Select block once arrow has landed
execute if entity @s[nbt={inGround:1b}] run function fdoors:tool/add_block
