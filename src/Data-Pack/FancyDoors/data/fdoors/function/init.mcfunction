# This function handles the initial setup and reloading of the datapack

# Set up scoreboards
scoreboard objectives add fdoors.owner_uuid1 dummy
scoreboard objectives add fdoors.owner_uuid2 dummy
scoreboard objectives add fdoors.owner_uuid3 dummy
scoreboard objectives add fdoors.owner_uuid4 dummy

scoreboard objectives add fdoors.uuid1 dummy
scoreboard objectives add fdoors.uuid2 dummy
scoreboard objectives add fdoors.uuid3 dummy
scoreboard objectives add fdoors.uuid4 dummy

scoreboard objectives add fdoors.translation.x dummy
scoreboard objectives add fdoors.translation.y dummy
scoreboard objectives add fdoors.translation.z dummy

scoreboard objectives add fdoors.animation.tick dummy
scoreboard objectives add fdoors.animation.duration dummy
scoreboard objectives add fdoors.animation.delta dummy
scoreboard objectives add fdoors.animation.old_delta dummy

scoreboard objectives add fdoors.local dummy

# Forcibly reset advancement triggers
advancement revoke @s only fdoors:hidden/pair_crossbow_tool
advancement revoke @s only fdoors:hidden/use_crossbow_tool

