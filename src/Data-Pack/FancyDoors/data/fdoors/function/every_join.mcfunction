# This function is run EVERY time a player joins a world
#
# This exists because /trigger is a horrible, stupid, no good, very bad way of
# returning information from a dialog that we are nevertheless forced to use.
# By resetting triggers/tags on re-join, this function acts as a fail-safe in case
# something goes wrong.

# Reset menu status
function fdoors:menu/reset

# Reset score
scoreboard players set @s fdoors.quits 0
