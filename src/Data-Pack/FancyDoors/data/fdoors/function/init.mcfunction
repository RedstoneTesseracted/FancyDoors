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

scoreboard objectives add fdoors.local dummy
scoreboard objectives add fdoors.global dummy
scoreboard objectives add fdoors.number dummy

# Door configuration dialog working scores
scoreboard objectives add fdoors.menu.settings.trigger dummy
scoreboard objectives add fdoors.menu.settings.range.min dummy
scoreboard objectives add fdoors.menu.settings.range.max dummy
scoreboard objectives add fdoors.menu.settings.block dummy
scoreboard objectives add fdoors.menu.settings.item dummy
scoreboard objectives add fdoors.menu.settings.item_components dummy
scoreboard objectives add fdoors.menu.settings.duration dummy
scoreboard objectives add fdoors.menu.settings.transform.offset.x dummy
scoreboard objectives add fdoors.menu.settings.transform.offset.y dummy
scoreboard objectives add fdoors.menu.settings.transform.offset.z dummy
scoreboard objectives add fdoors.menu.settings.transform.scale.x dummy
scoreboard objectives add fdoors.menu.settings.transform.scale.y dummy
scoreboard objectives add fdoors.menu.settings.transform.scale.z dummy
scoreboard objectives add fdoors.menu.settings.transform.l_rotation.axis dummy
scoreboard objectives add fdoors.menu.settings.transform.l_rotation.angle dummy
scoreboard objectives add fdoors.menu.settings.transform.r_rotation.axis dummy
scoreboard objectives add fdoors.menu.settings.transform.r_rotation.angle dummy
scoreboard objectives add fdoors.menu.settings.color.r dummy
scoreboard objectives add fdoors.menu.settings.color.g dummy
scoreboard objectives add fdoors.menu.settings.color.b dummy

# Dialog trigger scores
scoreboard objectives add fdoors.quits minecraft.custom:minecraft.leave_game
scoreboard objectives add fdoors.menu.goto trigger
scoreboard objectives add fdoors.menu.duration trigger
scoreboard objectives add fdoors.menu.range trigger
scoreboard objectives add fdoors.menu.item trigger
scoreboard objectives add fdoors.menu.block trigger
scoreboard objectives add fdoors.menu.transform.offset trigger
scoreboard objectives add fdoors.menu.transform.scale trigger
scoreboard objectives add fdoors.menu.transform.rotation trigger
scoreboard objectives add fdoors.menu.color trigger

# Constant numbers
scoreboard players set 4 fdoors.number 4
scoreboard players set 10 fdoors.number 10
scoreboard players set 99 fdoors.number 99
scoreboard players set 100 fdoors.number 100
scoreboard players set 255 fdoors.number 255
scoreboard players set 256 fdoors.number 256
scoreboard players set 1000 fdoors.number 1000

# Launch the periodic fixer function
function fdoors:periodic_fix
