# This function configures newly spawned block selector arrows
# It is run BY unconfigured selector arrows just after being shot by the player

# Make this arrow impossible to pick up
data modify entity @s pickup set value 0

# Make arrow do ZERO damage
data modify entity @s damage set value 0.0d

# Mark as configured
tag @s add fdoors.selector_arrow
