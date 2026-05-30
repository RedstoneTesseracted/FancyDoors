# This function runs periodic fixes for unlikely scenarios

# Reset all advancement triggers
advancement revoke @s only fdoors:hidden/pair_crossbow_tool
advancement revoke @s only fdoors:hidden/use_crossbow_tool
advancement revoke @s only fdoors:hidden/place_door_controller

# Schedule to run again
schedule function fdoors:periodic_fix 30s replace
