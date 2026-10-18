# This function handles the player interacting with the door customization menu

# Customizations made in this menu are saved to a slew of player scoreboards.
# When pairing or canceling, these scoreboards are reset from the paired door's current state
# When the player clicks "submit", their scoreboard values are written to the door controller.
#
# Trigger-type scoreboards (used for handling menu inputs):
#   fdoors.menu.goto: Go directly to a menu without doing anything else
#           1 - Root menu
#           2 - Go to one of the trigger menus, depending on the value of fdoors.menu.chosen_trigger_type
#           3 - Duration menu
#           4 - Transform menu
#           5 - Sounds menu
#          -1 - Destroy door
#          -2 - Submit changes
#          -3 - Cancel and discard changes
#   fdoors.menu.range: Settings returned from the "range trigger" menu.  Contains two numbers formatted as $(min)1$(max)
#   fdoors.menu.block: Boolean indicating whether the user wants to set the current block trigger.  Set when returning from "block trigger" menu
#   fdoors.menu.item: Settings returned from the "item trigger" menu.  Formatted as $(min)1$(max)$(set?)
#   fdoors.menu.duration: Setting returned from "duration menu".  A value of "-1" is treated as "do not change current value"
#   
#
# Dummy-type scoreboards (used to track changes to settings)
#   fdoors.menu.settings.trigger: An integer representing the currently chosen trigger type
#       0 = Range
#       1 = Block
#       2 = Item
#   fdoors.menu.settings.range.min: Minimum block distance for range-based trigger
#   fdoors.menu.settings.range.max: Maximum block distance for range-based trigger
#   fdoors.menu.settings.block: Integer representing a block preset
#   fdoors.menu.settings.item: Integer indicating whether to set the trigger based on the held item
#       1 = Do not update item
#       2 = Set item from main hand
#       3 = Set item from offhand
#   fdoors.menu.settings.item_components: Boolean indicating whether to extra item components in an item-based trigger
#   fdoors.menu.settings.duration: Number of ticks the opening/closing animation should take
#   fdoors.menu.settings.transform.offset.x: X-offset of fully-opened transformation
#   fdoors.menu.settings.transform.offset.y: Y-offset of fully-opened transformation
#   fdoors.menu.settings.transform.offset.z: Z-offset of fully-opened transformation
#   fdoors.menu.settings.transform.scale.x: X-scale of fully-opened transformation
#   fdoors.menu.settings.transform.scale.y: Y-scale of fully-opened transformation
#   fdoors.menu.settings.transform.scale.z: Z-scale of fully-opened transformation
#   fdoors.menu.settings.transform.l_rotation.axis: Integer indicating the axis of rotation
#       0 = x-axis
#       1 = y-axis
#       2 = z-axis
#   fdoors.menu.settings.transform.l_rotation.angle: Integer indicating the angle of rotation in degrees
#   fdoors.menu.settings.transform.r_rotation.axis: Integer indicating the axis of rotation
#       0 = x-axis
#       1 = y-axis
#       2 = z-axis
#   fdoors.menu.settings.transform.r_rotation.angle: Integer indicating the angle of rotation in degrees

# The root menu branches out to several other menus where individual options can be edited.
# Menu structure:
# 
# Root menu (fdoors.menu.goto=1)
#   Trigger (fdoors.menu.goto=2)
#       Range (fdoors.menu.range=-2)          <->   Block (fdoors.menu.block=-2)   <-> Item (fdoors.menu.item=-2)
#                  Min                         |         Preset                     |      Min Range
#                  Max                         |                                    |      Max Range
#                                              |                                    |    Set from current?
#                                              |                                    |    Include components?
#       Set (fdoors.menu.range=$(min)1$(max))  |   Set (fdoors.menu.block=$(p))     | Back (fdoors.menu.item=$(min)0$(max)$(b)$(c))
#       Cancel (fdoors.menu.range=-1)          |   Cancel (fdoors.menu.block=-1)    | Cancel (fdoors.menu.item=-1)
#   Duration (fdoors.menu.goto=3)
#       <num>
#       Set (fdoors.menu.duration=-1)
#       Back (fdoors.menu.duration=$(duration))
#   Transform (fdoors.menu.goto=4)
#       Offset (fdoors.menu.goto=41)
#           X <num>
#           Y <num>
#           Z <num>
#           Set (fdoors.menu.transform.offset=$(x)0$(y)0$(z))
#           Cancel (fdoors.menu.transform.offset=-1)
#       Scale (fdoors.menu.goto=42)
#           X <num*10>
#           Y <num*10>
#           Z <num*10>
#           Back (fdoors.menu.transform.scale=$(x)0$(y)0$(z))
#           Cancel (fdoors.menu.transform.scale=-1)
#       Left Rotation (fdoors.menu.goto=43)
#           Axis [x=0|y=1|x=2]
#           Angle <num, 0-360>
#           Back (fdoors.menu.transform.rotation=$(angle)$(axis))
#           Cancel (fdoors.menu.transform.rotation=-1)
#       Right Rotation (fdoors.menu.goto=44)
#           Axis [x=0|y=1|x=2]
#           Angle <num, 0-360>
#           Back (fdoors.menu.transform.rotation=$(angle)$(axis))
#           Cancel (fdoors.menu.transform.rotation=-1)
#       Back (fdoors.menu.goto=1)
#   Sounds (fdoors.menu.goto=5)
#       Start Open
#       Finish Open
#       Start Close
#       Finish Close
#       Back (fdoors.menu.goto=1)
#   Remove Door (fdoors.menu.goto=-1)
#   Commit (fdoors.menu.goto=-2)
#   Cancel (fdoors.menu.goto=-3)
#
execute if entity @s[tag=fdoors.menu.expect.goto] unless function fdoors:menu/check/goto_enabled run function fdoors:menu/handle/goto
execute if entity @s[tag=fdoors.menu.expect.duration] unless function fdoors:menu/check/duration_enabled run function fdoors:menu/handle/duration
execute if entity @s[tag=fdoors.menu.expect.range] unless function fdoors:menu/check/range_enabled run function fdoors:menu/handle/range
execute if entity @s[tag=fdoors.menu.expect.item] unless function fdoors:menu/check/item_enabled run function fdoors:menu/handle/item
execute if entity @s[tag=fdoors.menu.expect.block] unless function fdoors:menu/check/block_enabled run function fdoors:menu/handle/block
execute if entity @s[tag=fdoors.menu.expect.transform.translation] unless function fdoors:menu/check/transform_offset_enabled run function fdoors:menu/handle/transform_offset
execute if entity @s[tag=fdoors.menu.expect.transform.scale] unless function fdoors:menu/check/transform_scale_enabled run function fdoors:menu/handle/transform_offset
execute if entity @s[tag=fdoors.menu.expect.transform.left_rotation] unless function fdoors:menu/check/transform_rotation_enabled run function fdoors:menu/handle/transform_left_rotation
execute if entity @s[tag=fdoors.menu.expect.transform.right_rotation] unless function fdoors:menu/check/transform_rotation_enabled run function fdoors:menu/handle/transform_right_rotation
