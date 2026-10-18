# Dialogs only allow you to return a singular integer for unprivileged players.
#
# To get around this, some dialogs encode pairs of integers using the pattern:
#   $(x)0$(y)
#
# This function is used to parse said representation into two separate scoreboard values using
# the following procedure:
#
# 1) If ten's place is 0, integer divide by 100 to get the first number.
#    Then, multiply the above by 100 and subtract from the original value to get the second number.
# 2) If then's place is NOT 0, integer divide by 1000 to get the first number.
#    Then, multiply the above by 1000 and subtract from the original value to get the second number.
#
# To use this function, set fdoors.input's fdoors.local score to the input value.
# The result is then written to fdoors.x (fdoors.local) and fdoors.y (fdoors.local).
# The input field is modified during calculations, so do not rely on it remaining unchanged.

# Obtain the ten's place using (input // 10) % 10
scoreboard players operation fdoors.tens fdoors.local = fdoors.input fdoors.local
scoreboard players operation fdoors.tens fdoors.local /= 10 fdoors.number
scoreboard players operation fdoors.tens fdoors.local %= 10 fdoors.number

# Ten's place is used to determine how much we should shift the digits by
execute if score fdoors.tens fdoors.local matches 0 run scoreboard players set fdoors.shift fdoors.local 100
execute unless score fdoors.tens fdoors.local matches 0 run scoreboard players set fdoors.shift fdoors.local 1000

# Obtain first number
scoreboard players operation fdoors.x fdoors.local = fdoors.input fdoors.local
scoreboard players operation fdoors.x fdoors.local /= fdoors.shift fdoors.local

# Obtain second number
scoreboard players operation fdoors.y fdoors.local = fdoors.x fdoors.local
scoreboard players operation fdoors.y fdoors.local *= fdoors.scale fdoors.local
scoreboard players operation fdoors.y fdoors.local >< fdoors.input fdoors.local
scoreboard players operation fdoors.input fdoors.local -= fdoors.y fdoors.local
scoreboard players operation fdoors.y fdoors.local >< fdoors.input fdoors.local
