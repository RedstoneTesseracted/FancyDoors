# Dialogs only allow you to return a singular integer for unprivileged players.
#
# To get around this, some dialogs encode triplets of integers using the pattern:
#   $(x)00$(y)00$(z)
#
# This function is used to parse said representation into three separate scoreboard values
#


