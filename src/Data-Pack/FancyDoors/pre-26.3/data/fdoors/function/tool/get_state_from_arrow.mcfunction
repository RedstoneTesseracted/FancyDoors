# This function abstracts away the process of retrieving block state from an arrow
data modify storage fdoors:utility new_block.id set from entity @s inBlockState.Name
data modify storage fdoors:utility new_block.properties set from entity @s inBlockState.Properties
