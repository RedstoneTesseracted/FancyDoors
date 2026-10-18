# This function is used to parse a triple of numbers from the following pattern:
#   $(first)0$(second)0$(third)
#
# The input value is read from the scoreboard name "fdoors.triple.in" and objective "fdoors.local".
# The resulting values are returned under the following scoreboard names/objectives:
#   fdoors.triple.n1 fdoors.local
#   fdoors.triple.n2 fdoors.local
#   fdoors.triple.n3 fdoors.local

# Smallest value: 0
# Largest value: 99099099
# Intermediates:
#     00001 -> 1
#     00101 -> 101
#     10101
#    101011
#    101101
#    110101
#   1101101
#   1101011
#   1011011

# Pseudo code:
# 1. Isolate last two digits of number

# Isolate last two digits to obtain third number
scoreboard players operation fdoors.part fdoors.local = fdoors.triple.in fdoors.local
scoreboard players operation fdoors.part fdoors.local /= 100 fdoors.number
scoreboard players operation fdoors.part fdoors.local *= 100 fdoors.number
scoreboard players operation fdoors.triple.n3 fdoors.local = fdoors.triple.in fdoors.local
scoreboard players operation fdoors.triple.n3 fdoors.local -= fdoors.part fdoors.local

# Intermediates:
#     00000 -> 0
#     00100 -> 100
#     10100
#    101000
#    101100
#    110100
#   1101100
#   1101000
#   1011000

# Intermediates:
#    00000 -> 0
#    00100 -> 100
#    10100
#    10100
#   101100
#   110100
#   110110
#   110100
#   101100

# Remove trailing zeros to reduce pattern down to $(first)0$(second)
# Note: a double-digit third number results in a padding-zero in the thousands-place, so we may need to strip that out too
scoreboard players operation fdoors.part fdoors.local /= 100 fdoors.number
execute if score fdoors.triple.n3 fdoors.local matches 10.. run scoreboard players operation fdoors.part fdoors.local /= 10 fdoors.number

# Isolate last two digits to obtain second number (same procedure as above)
scoreboard players operation fdoors.triple.n1 fdoors.local = fdoors.part fdoors.local
scoreboard players operation fdoors.triple.n1 fdoors.local /= 100 fdoors.number
scoreboard players operation fdoors.triple.n1 fdoors.local *= 100 fdoors.number
scoreboard players operation fdoors.triple.n2 fdoors.local = fdoors.part fdoors.local
scoreboard players operation fdoors.triple.n2 fdoors.local -= fdoors.triple.n1 fdoors.local

# After removing trailing zeros again, we're left with just $(first)
# Similar to before, a double-digit second number results in an extra 0 we need to strip out
scoreboard players operation fdoors.triple.n1 fdoors.local /= 100 fdoors.number
execute if score fdoors.triple.n2 fdoors.local matches 10.. run scoreboard players operation fdoors.triple.n1 fdoors.local /= 10 fdoors.number
