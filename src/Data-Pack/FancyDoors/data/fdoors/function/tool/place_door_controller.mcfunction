# This functions handles running all door placers whenever the player places a door controller.
# It is run by an advancement trigger.

# Run placers
execute as @e[tag=fdoors.door.placer] run function fdoors:run_placer

# Reset advancement trigger
advancement revoke @s only fdoors:hidden/place_door_controller
