# This function abstracts away the process of retrieving block state from an arrow
execute unless data entity @s inBlockState.id run data modify storage fdoors:utility new_block.id set from entity @s inBlockState
execute if data entity @s inBlockState.id run data modify storage fdoors:utility new_block.id set from entity @s inBlockState.id
data modify storage fdoors:utility new_block.properties set from entity @s inBlockState.properties
