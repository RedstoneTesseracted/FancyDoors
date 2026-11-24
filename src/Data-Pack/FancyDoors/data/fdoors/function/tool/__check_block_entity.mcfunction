# Function macro part of check_block_entity
# Writes result to scoreboard fdoors.local.result:fdoors.local

$execute store result score fdoors.local.result fdoors.local run data get block $(x) $(y) $(z)
return 1
