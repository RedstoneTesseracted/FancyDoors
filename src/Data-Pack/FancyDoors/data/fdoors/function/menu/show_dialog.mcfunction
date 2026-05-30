# This function enables various scoreboard triggers and shows the dialog screen to the player

# Set up data for substitution
data modify storage fdoors:temp menu set value {trigger: "Range"}

# Enable triggers
scoreboard players reset @s fdoors.menu.action
scoreboard players enable @s fdoors.menu.action
tag @s add fdoors.menu.open

# Show dialog
dialog show @s fdoors:door_config
