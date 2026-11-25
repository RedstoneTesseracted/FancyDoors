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
scoreboard objectives add fdoors.menu.settings.transform.yaw dummy
scoreboard objectives add fdoors.menu.settings.transform.pitch dummy
scoreboard objectives add fdoors.menu.settings.color.r dummy
scoreboard objectives add fdoors.menu.settings.color.g dummy
scoreboard objectives add fdoors.menu.settings.color.b dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_opening.sound dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_opening.volume dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_opening.pitch dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_opening.update dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_opening.sound dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_opening.volume dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_opening.pitch dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_opening.update dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_closing.sound dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_closing.volume dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_closing.pitch dummy
scoreboard objectives add fdoors.menu.settings.sounds.start_closing.update dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_closing.sound dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_closing.volume dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_closing.pitch dummy
scoreboard objectives add fdoors.menu.settings.sounds.finish_closing.update dummy

# Dialog trigger scores
scoreboard objectives add fdoors.quits minecraft.custom:minecraft.leave_game
scoreboard objectives add fdoors.menu.goto trigger
scoreboard objectives add fdoors.menu.duration trigger
scoreboard objectives add fdoors.menu.range trigger
scoreboard objectives add fdoors.menu.item trigger
scoreboard objectives add fdoors.menu.block trigger
scoreboard objectives add fdoors.menu.transform.offset trigger
scoreboard objectives add fdoors.menu.transform.scale trigger
scoreboard objectives add fdoors.menu.transform.yaw trigger
scoreboard objectives add fdoors.menu.transform.pitch trigger
scoreboard objectives add fdoors.menu.color trigger
scoreboard objectives add fdoors.menu.destroy trigger
scoreboard objectives add fdoors.menu.sounds.start_opening trigger
scoreboard objectives add fdoors.menu.sounds.finish_opening trigger
scoreboard objectives add fdoors.menu.sounds.start_closing trigger
scoreboard objectives add fdoors.menu.sounds.finish_closing trigger

# Constant numbers
scoreboard players set 4 fdoors.number 4
scoreboard players set 10 fdoors.number 10
scoreboard players set 99 fdoors.number 99
scoreboard players set 100 fdoors.number 100
scoreboard players set 255 fdoors.number 255
scoreboard players set 256 fdoors.number 256
scoreboard players set 1000 fdoors.number 1000

# Global configuration scores
scoreboard objectives add fdoors.config dummy
execute unless score fdoors.enable_bedrock fdoors.config matches -2147483648..2147483647 run scoreboard players set fdoors.enable_bedrock fdoors.config 0
execute unless score fdoors.enable_barriers fdoors.config matches -2147483648..2147483647 run scoreboard players set fdoors.enable_barriers fdoors.config 0
execute unless score fdoors.enable_block_entities fdoors.config matches -2147483648..2147483647 run scoreboard players set fdoors.enable_block_entities fdoors.config 0
execute unless score fdoors.regenerate_doors fdoors.config matches -2147483648..2147483647 run scoreboard players set fdoors.regenerate_doors fdoors.config 0
execute unless score fdoors.enable_welcome_message fdoors.config matches -2147483648..2147483647 run scoreboard players set fdoors.enable_welcome_message fdoors.config 1

# Player configuration scores
scoreboard objectives add fdoors.extended_menu dummy
execute as @a unless score @s fdoors.extended_menu matches -2147483648..2147483647 run scoreboard players set @s fdoors.extended_menu 0

# Launch the periodic fixer function
function fdoors:periodic_fix
