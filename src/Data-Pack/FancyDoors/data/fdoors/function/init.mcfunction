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

scoreboard objectives add fdoors.last_motion.x dummy
scoreboard objectives add fdoors.last_motion.y dummy
scoreboard objectives add fdoors.last_motion.z dummy

scoreboard objectives add fdoors.animation.tick dummy
scoreboard objectives add fdoors.animation.duration dummy
scoreboard objectives add fdoors.animation.delta dummy
scoreboard objectives add fdoors.animation.old_delta dummy
scoreboard objectives add fdoors.animation.offset dummy

scoreboard objectives add fdoors.local dummy
scoreboard objectives add fdoors.global dummy

# Dialog trigger scores
scoreboard objectives add fdoors.quits minecraft.custom:minecraft.leave_game
scoreboard objectives add fdoors.menu.action trigger

# Configuration constants
scoreboard players set fdoors.precision fdoors.global 100

# Launch the periodic fixer function
function fdoors:periodic_fix
