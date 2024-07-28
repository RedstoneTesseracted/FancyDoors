# This function does a brute-force check for 
# the presense of every block state in order
# to compile the block state string compatible
# with /setblock
#
# The resulting string is stored in fdoors:utility.state_string.value
# (the extra nesting is necessary for function macros)
#
# This is called from fdoors:door/configure/add_block

# Check for EVERY block state and append value if state is present
execute if data storage fdoors:utility new_block.Properties.slot_0_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_0_occupied"}
execute if data storage fdoors:utility new_block.Properties.rotation run function fdoors:door/configure/compile_block_state/append {state:"rotation"}
execute if data storage fdoors:utility new_block.Properties.attachment run function fdoors:door/configure/compile_block_state/append {state:"attachment"}
execute if data storage fdoors:utility new_block.Properties.disarmed run function fdoors:door/configure/compile_block_state/append {state:"disarmed"}
execute if data storage fdoors:utility new_block.Properties.open run function fdoors:door/configure/compile_block_state/append {state:"open"}
execute if data storage fdoors:utility new_block.Properties.instrument run function fdoors:door/configure/compile_block_state/append {state:"instrument"}
execute if data storage fdoors:utility new_block.Properties.candles run function fdoors:door/configure/compile_block_state/append {state:"candles"}
execute if data storage fdoors:utility new_block.Properties.triggered run function fdoors:door/configure/compile_block_state/append {state:"triggered"}
execute if data storage fdoors:utility new_block.Properties.face run function fdoors:door/configure/compile_block_state/append {state:"face"}
execute if data storage fdoors:utility new_block.Properties.slot_4_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_4_occupied"}
execute if data storage fdoors:utility new_block.Properties.eggs run function fdoors:door/configure/compile_block_state/append {state:"eggs"}
execute if data storage fdoors:utility new_block.Properties.delay run function fdoors:door/configure/compile_block_state/append {state:"delay"}
execute if data storage fdoors:utility new_block.Properties.lit run function fdoors:door/configure/compile_block_state/append {state:"lit"}
execute if data storage fdoors:utility new_block.Properties.has_bottle_0 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_0"}
execute if data storage fdoors:utility new_block.Properties.snowy run function fdoors:door/configure/compile_block_state/append {state:"snowy"}
execute if data storage fdoors:utility new_block.Properties.note run function fdoors:door/configure/compile_block_state/append {state:"note"}
execute if data storage fdoors:utility new_block.Properties.half run function fdoors:door/configure/compile_block_state/append {state:"half"}
execute if data storage fdoors:utility new_block.Properties.has_record run function fdoors:door/configure/compile_block_state/append {state:"has_record"}
execute if data storage fdoors:utility new_block.Properties.hatch run function fdoors:door/configure/compile_block_state/append {state:"hatch"}
execute if data storage fdoors:utility new_block.Properties.cracked run function fdoors:door/configure/compile_block_state/append {state:"cracked"}
execute if data storage fdoors:utility new_block.Properties.slot_3_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_3_occupied"}
execute if data storage fdoors:utility new_block.Properties.age run function fdoors:door/configure/compile_block_state/append {state:"age"}
execute if data storage fdoors:utility new_block.Properties.conditional run function fdoors:door/configure/compile_block_state/append {state:"conditional"}
execute if data storage fdoors:utility new_block.Properties.part run function fdoors:door/configure/compile_block_state/append {state:"part"}
execute if data storage fdoors:utility new_block.Properties.south run function fdoors:door/configure/compile_block_state/append {state:"south"}
execute if data storage fdoors:utility new_block.Properties.hanging run function fdoors:door/configure/compile_block_state/append {state:"hanging"}
execute if data storage fdoors:utility new_block.Properties.up run function fdoors:door/configure/compile_block_state/append {state:"up"}
execute if data storage fdoors:utility new_block.Properties.persistent run function fdoors:door/configure/compile_block_state/append {state:"persistent"}
execute if data storage fdoors:utility new_block.Properties.in_wall run function fdoors:door/configure/compile_block_state/append {state:"in_wall"}
execute if data storage fdoors:utility new_block.Properties.down run function fdoors:door/configure/compile_block_state/append {state:"down"}
execute if data storage fdoors:utility new_block.Properties.axis run function fdoors:door/configure/compile_block_state/append {state:"axis"}
execute if data storage fdoors:utility new_block.Properties.shape run function fdoors:door/configure/compile_block_state/append {state:"shape"}
execute if data storage fdoors:utility new_block.Properties.stage run function fdoors:door/configure/compile_block_state/append {state:"stage"}
execute if data storage fdoors:utility new_block.Properties.west run function fdoors:door/configure/compile_block_state/append {state:"west"}
execute if data storage fdoors:utility new_block.Properties.north run function fdoors:door/configure/compile_block_state/append {state:"north"}
execute if data storage fdoors:utility new_block.Properties.has_bottle_1 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_1"}
execute if data storage fdoors:utility new_block.Properties.slot_2_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_2_occupied"}
execute if data storage fdoors:utility new_block.Properties.thickness run function fdoors:door/configure/compile_block_state/append {state:"thickness"}
execute if data storage fdoors:utility new_block.Properties.occupied run function fdoors:door/configure/compile_block_state/append {state:"occupied"}
execute if data storage fdoors:utility new_block.Properties.slot_1_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_1_occupied"}
execute if data storage fdoors:utility new_block.Properties.waterlogged run function fdoors:door/configure/compile_block_state/append {state:"waterlogged"}
execute if data storage fdoors:utility new_block.Properties.attached run function fdoors:door/configure/compile_block_state/append {state:"attached"}
execute if data storage fdoors:utility new_block.Properties.hinge run function fdoors:door/configure/compile_block_state/append {state:"hinge"}
execute if data storage fdoors:utility new_block.Properties.mode run function fdoors:door/configure/compile_block_state/append {state:"mode"}
execute if data storage fdoors:utility new_block.Properties.can_summon run function fdoors:door/configure/compile_block_state/append {state:"can_summon"}
execute if data storage fdoors:utility new_block.Properties.shrieking run function fdoors:door/configure/compile_block_state/append {state:"shrieking"}
execute if data storage fdoors:utility new_block.Properties.drag run function fdoors:door/configure/compile_block_state/append {state:"drag"}
execute if data storage fdoors:utility new_block.Properties.orientation run function fdoors:door/configure/compile_block_state/append {state:"orientation"}
execute if data storage fdoors:utility new_block.Properties.power run function fdoors:door/configure/compile_block_state/append {state:"power"}
execute if data storage fdoors:utility new_block.Properties.powered run function fdoors:door/configure/compile_block_state/append {state:"powered"}
execute if data storage fdoors:utility new_block.Properties.east run function fdoors:door/configure/compile_block_state/append {state:"east"}
execute if data storage fdoors:utility new_block.Properties.dusted run function fdoors:door/configure/compile_block_state/append {state:"dusted"}
execute if data storage fdoors:utility new_block.Properties.short run function fdoors:door/configure/compile_block_state/append {state:"short"}
execute if data storage fdoors:utility new_block.Properties.slot_5_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_5_occupied"}
execute if data storage fdoors:utility new_block.Properties.extended run function fdoors:door/configure/compile_block_state/append {state:"extended"}
execute if data storage fdoors:utility new_block.Properties.vault_state run function fdoors:door/configure/compile_block_state/append {state:"vault_state"}
execute if data storage fdoors:utility new_block.Properties.leaves run function fdoors:door/configure/compile_block_state/append {state:"leaves"}
execute if data storage fdoors:utility new_block.Properties.bottom run function fdoors:door/configure/compile_block_state/append {state:"bottom"}
execute if data storage fdoors:utility new_block.Properties.distance run function fdoors:door/configure/compile_block_state/append {state:"distance"}
execute if data storage fdoors:utility new_block.Properties.type run function fdoors:door/configure/compile_block_state/append {state:"type"}
execute if data storage fdoors:utility new_block.Properties.has_bottle_2 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_2"}
execute if data storage fdoors:utility new_block.Properties.facing run function fdoors:door/configure/compile_block_state/append {state:"facing"}
execute if data storage fdoors:utility new_block.Properties.tilt run function fdoors:door/configure/compile_block_state/append {state:"tilt"}
execute if data storage fdoors:utility new_block.Properties.unstable run function fdoors:door/configure/compile_block_state/append {state:"unstable"}
execute if data storage fdoors:utility new_block.Properties.honey_level run function fdoors:door/configure/compile_block_state/append {state:"honey_level"}
execute if data storage fdoors:utility new_block.Properties.charges run function fdoors:door/configure/compile_block_state/append {state:"charges"}
execute if data storage fdoors:utility new_block.Properties.bites run function fdoors:door/configure/compile_block_state/append {state:"bites"}
execute if data storage fdoors:utility new_block.Properties.crafting run function fdoors:door/configure/compile_block_state/append {state:"crafting"}
execute if data storage fdoors:utility new_block.Properties.trial_spawner_state run function fdoors:door/configure/compile_block_state/append {state:"trial_spawner_state"}
execute if data storage fdoors:utility new_block.Properties.vertical_direction run function fdoors:door/configure/compile_block_state/append {state:"vertical_direction"}
execute if data storage fdoors:utility new_block.Properties.bloom run function fdoors:door/configure/compile_block_state/append {state:"bloom"}
execute if data storage fdoors:utility new_block.Properties.ominous run function fdoors:door/configure/compile_block_state/append {state:"ominous"}
execute if data storage fdoors:utility new_block.Properties.locked run function fdoors:door/configure/compile_block_state/append {state:"locked"}
execute if data storage fdoors:utility new_block.Properties.sculk_sensor_phase run function fdoors:door/configure/compile_block_state/append {state:"sculk_sensor_phase"}
execute if data storage fdoors:utility new_block.Properties.has_book run function fdoors:door/configure/compile_block_state/append {state:"has_book"}
execute if data storage fdoors:utility new_block.Properties.layers run function fdoors:door/configure/compile_block_state/append {state:"layers"}
execute if data storage fdoors:utility new_block.Properties.berries run function fdoors:door/configure/compile_block_state/append {state:"berries"}
execute if data storage fdoors:utility new_block.Properties.flower_amount run function fdoors:door/configure/compile_block_state/append {state:"flower_amount"}
execute if data storage fdoors:utility new_block.Properties.level run function fdoors:door/configure/compile_block_state/append {state:"level"}
execute if data storage fdoors:utility new_block.Properties.inverted run function fdoors:door/configure/compile_block_state/append {state:"inverted"}
execute if data storage fdoors:utility new_block.Properties.pickles run function fdoors:door/configure/compile_block_state/append {state:"pickles"}
execute if data storage fdoors:utility new_block.Properties.moisture run function fdoors:door/configure/compile_block_state/append {state:"moisture"}
execute if data storage fdoors:utility new_block.Properties.enabled run function fdoors:door/configure/compile_block_state/append {state:"enabled"}
execute if data storage fdoors:utility new_block.Properties.eye run function fdoors:door/configure/compile_block_state/append {state:"eye"}
execute if data storage fdoors:utility new_block.Properties.signal_fire run function fdoors:door/configure/compile_block_state/append {state:"signal_fire"}

# Remove trailing comma
data modify storage fdoors:utility state_string.value set string storage fdoors:utility state_string.value 0 -1

# Add enclosing square brackets
function fdoors:door/configure/compile_block_state/__build_block_state_string with storage fdoors:utility state_string
