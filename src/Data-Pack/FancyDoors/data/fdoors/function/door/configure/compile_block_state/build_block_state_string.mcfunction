# This function does a brute-force check for 
# the presence of every block state in order
# to compile the block state string compatible
# with /setblock
#
# The resulting string is stored in fdoors:utility.state_string.value
# (the extra nesting is necessary for function macros)
#
# This is called from fdoors:door/configure/add_block

# Check for EVERY block state and append value if state is present
execute if data storage fdoors:utility new_block.properties.eggs run function fdoors:door/configure/compile_block_state/append {state:"eggs"}
execute if data storage fdoors:utility new_block.properties.shape run function fdoors:door/configure/compile_block_state/append {state:"shape"}
execute if data storage fdoors:utility new_block.properties.has_bottle_1 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_1"}
execute if data storage fdoors:utility new_block.properties.bottom run function fdoors:door/configure/compile_block_state/append {state:"bottom"}
execute if data storage fdoors:utility new_block.properties.crafting run function fdoors:door/configure/compile_block_state/append {state:"crafting"}
execute if data storage fdoors:utility new_block.properties.part run function fdoors:door/configure/compile_block_state/append {state:"part"}
execute if data storage fdoors:utility new_block.properties.face run function fdoors:door/configure/compile_block_state/append {state:"face"}
execute if data storage fdoors:utility new_block.properties.moisture run function fdoors:door/configure/compile_block_state/append {state:"moisture"}
execute if data storage fdoors:utility new_block.properties.has_book run function fdoors:door/configure/compile_block_state/append {state:"has_book"}
execute if data storage fdoors:utility new_block.properties.down run function fdoors:door/configure/compile_block_state/append {state:"down"}
execute if data storage fdoors:utility new_block.properties.occupied run function fdoors:door/configure/compile_block_state/append {state:"occupied"}
execute if data storage fdoors:utility new_block.properties.attachment run function fdoors:door/configure/compile_block_state/append {state:"attachment"}
execute if data storage fdoors:utility new_block.properties.slot_2_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_2_occupied"}
execute if data storage fdoors:utility new_block.properties.creaking_heart_state run function fdoors:door/configure/compile_block_state/append {state:"creaking_heart_state"}
execute if data storage fdoors:utility new_block.properties.signal_fire run function fdoors:door/configure/compile_block_state/append {state:"signal_fire"}
execute if data storage fdoors:utility new_block.properties.berries run function fdoors:door/configure/compile_block_state/append {state:"berries"}
execute if data storage fdoors:utility new_block.properties.half run function fdoors:door/configure/compile_block_state/append {state:"half"}
execute if data storage fdoors:utility new_block.properties.slot_3_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_3_occupied"}
execute if data storage fdoors:utility new_block.properties.honey_level run function fdoors:door/configure/compile_block_state/append {state:"honey_level"}
execute if data storage fdoors:utility new_block.properties.facing run function fdoors:door/configure/compile_block_state/append {state:"facing"}
execute if data storage fdoors:utility new_block.properties.tilt run function fdoors:door/configure/compile_block_state/append {state:"tilt"}
execute if data storage fdoors:utility new_block.properties.north run function fdoors:door/configure/compile_block_state/append {state:"north"}
execute if data storage fdoors:utility new_block.properties.enabled run function fdoors:door/configure/compile_block_state/append {state:"enabled"}
execute if data storage fdoors:utility new_block.properties.hatch run function fdoors:door/configure/compile_block_state/append {state:"hatch"}
execute if data storage fdoors:utility new_block.properties.power run function fdoors:door/configure/compile_block_state/append {state:"power"}
execute if data storage fdoors:utility new_block.properties.ominous run function fdoors:door/configure/compile_block_state/append {state:"ominous"}
execute if data storage fdoors:utility new_block.properties.short run function fdoors:door/configure/compile_block_state/append {state:"short"}
execute if data storage fdoors:utility new_block.properties.age run function fdoors:door/configure/compile_block_state/append {state:"age"}
execute if data storage fdoors:utility new_block.properties.slot_0_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_0_occupied"}
execute if data storage fdoors:utility new_block.properties.unstable run function fdoors:door/configure/compile_block_state/append {state:"unstable"}
execute if data storage fdoors:utility new_block.properties.attached run function fdoors:door/configure/compile_block_state/append {state:"attached"}
execute if data storage fdoors:utility new_block.properties.type run function fdoors:door/configure/compile_block_state/append {state:"type"}
execute if data storage fdoors:utility new_block.properties.has_record run function fdoors:door/configure/compile_block_state/append {state:"has_record"}
execute if data storage fdoors:utility new_block.properties.vertical_direction run function fdoors:door/configure/compile_block_state/append {state:"vertical_direction"}
execute if data storage fdoors:utility new_block.properties.candles run function fdoors:door/configure/compile_block_state/append {state:"candles"}
execute if data storage fdoors:utility new_block.properties.tip run function fdoors:door/configure/compile_block_state/append {state:"tip"}
execute if data storage fdoors:utility new_block.properties.powered run function fdoors:door/configure/compile_block_state/append {state:"powered"}
execute if data storage fdoors:utility new_block.properties.playlist_mode run function fdoors:door/configure/compile_block_state/append {state:"playlist_mode"}
execute if data storage fdoors:utility new_block.properties.sculk_sensor_phase run function fdoors:door/configure/compile_block_state/append {state:"sculk_sensor_phase"}
execute if data storage fdoors:utility new_block.properties.slot_1_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_1_occupied"}
execute if data storage fdoors:utility new_block.properties.mode run function fdoors:door/configure/compile_block_state/append {state:"mode"}
execute if data storage fdoors:utility new_block.properties.waterlogged run function fdoors:door/configure/compile_block_state/append {state:"waterlogged"}
execute if data storage fdoors:utility new_block.properties.note run function fdoors:door/configure/compile_block_state/append {state:"note"}
execute if data storage fdoors:utility new_block.properties.copper_golem_pose run function fdoors:door/configure/compile_block_state/append {state:"copper_golem_pose"}
execute if data storage fdoors:utility new_block.properties.orientation run function fdoors:door/configure/compile_block_state/append {state:"orientation"}
execute if data storage fdoors:utility new_block.properties.dusted run function fdoors:door/configure/compile_block_state/append {state:"dusted"}
execute if data storage fdoors:utility new_block.properties.potent_sulfur_state run function fdoors:door/configure/compile_block_state/append {state:"potent_sulfur_state"}
execute if data storage fdoors:utility new_block.properties.can_summon run function fdoors:door/configure/compile_block_state/append {state:"can_summon"}
execute if data storage fdoors:utility new_block.properties.charges run function fdoors:door/configure/compile_block_state/append {state:"charges"}
execute if data storage fdoors:utility new_block.properties.hydration run function fdoors:door/configure/compile_block_state/append {state:"hydration"}
execute if data storage fdoors:utility new_block.properties.in_wall run function fdoors:door/configure/compile_block_state/append {state:"in_wall"}
execute if data storage fdoors:utility new_block.properties.bites run function fdoors:door/configure/compile_block_state/append {state:"bites"}
execute if data storage fdoors:utility new_block.properties.trial_spawner_state run function fdoors:door/configure/compile_block_state/append {state:"trial_spawner_state"}
execute if data storage fdoors:utility new_block.properties.slot_5_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_5_occupied"}
execute if data storage fdoors:utility new_block.properties.up run function fdoors:door/configure/compile_block_state/append {state:"up"}
execute if data storage fdoors:utility new_block.properties.east run function fdoors:door/configure/compile_block_state/append {state:"east"}
execute if data storage fdoors:utility new_block.properties.segment_amount run function fdoors:door/configure/compile_block_state/append {state:"segment_amount"}
execute if data storage fdoors:utility new_block.properties.drag run function fdoors:door/configure/compile_block_state/append {state:"drag"}
execute if data storage fdoors:utility new_block.properties.extended run function fdoors:door/configure/compile_block_state/append {state:"extended"}
execute if data storage fdoors:utility new_block.properties.locked run function fdoors:door/configure/compile_block_state/append {state:"locked"}
execute if data storage fdoors:utility new_block.properties.has_bottle_0 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_0"}
execute if data storage fdoors:utility new_block.properties.distance run function fdoors:door/configure/compile_block_state/append {state:"distance"}
execute if data storage fdoors:utility new_block.properties.rotation run function fdoors:door/configure/compile_block_state/append {state:"rotation"}
execute if data storage fdoors:utility new_block.properties.layers run function fdoors:door/configure/compile_block_state/append {state:"layers"}
execute if data storage fdoors:utility new_block.properties.thickness run function fdoors:door/configure/compile_block_state/append {state:"thickness"}
execute if data storage fdoors:utility new_block.properties.open run function fdoors:door/configure/compile_block_state/append {state:"open"}
execute if data storage fdoors:utility new_block.properties.hanging run function fdoors:door/configure/compile_block_state/append {state:"hanging"}
execute if data storage fdoors:utility new_block.properties.cracked run function fdoors:door/configure/compile_block_state/append {state:"cracked"}
execute if data storage fdoors:utility new_block.properties.vault_state run function fdoors:door/configure/compile_block_state/append {state:"vault_state"}
execute if data storage fdoors:utility new_block.properties.shrieking run function fdoors:door/configure/compile_block_state/append {state:"shrieking"}
execute if data storage fdoors:utility new_block.properties.level run function fdoors:door/configure/compile_block_state/append {state:"level"}
execute if data storage fdoors:utility new_block.properties.triggered run function fdoors:door/configure/compile_block_state/append {state:"triggered"}
execute if data storage fdoors:utility new_block.properties.persistent run function fdoors:door/configure/compile_block_state/append {state:"persistent"}
execute if data storage fdoors:utility new_block.properties.leaves run function fdoors:door/configure/compile_block_state/append {state:"leaves"}
execute if data storage fdoors:utility new_block.properties.eye run function fdoors:door/configure/compile_block_state/append {state:"eye"}
execute if data storage fdoors:utility new_block.properties.south run function fdoors:door/configure/compile_block_state/append {state:"south"}
execute if data storage fdoors:utility new_block.properties.conditional run function fdoors:door/configure/compile_block_state/append {state:"conditional"}
execute if data storage fdoors:utility new_block.properties.delay run function fdoors:door/configure/compile_block_state/append {state:"delay"}
execute if data storage fdoors:utility new_block.properties.pickles run function fdoors:door/configure/compile_block_state/append {state:"pickles"}
execute if data storage fdoors:utility new_block.properties.flower_amount run function fdoors:door/configure/compile_block_state/append {state:"flower_amount"}
execute if data storage fdoors:utility new_block.properties.slot_4_occupied run function fdoors:door/configure/compile_block_state/append {state:"slot_4_occupied"}
execute if data storage fdoors:utility new_block.properties.side_chain run function fdoors:door/configure/compile_block_state/append {state:"side_chain"}
execute if data storage fdoors:utility new_block.properties.snowy run function fdoors:door/configure/compile_block_state/append {state:"snowy"}
execute if data storage fdoors:utility new_block.properties.bloom run function fdoors:door/configure/compile_block_state/append {state:"bloom"}
execute if data storage fdoors:utility new_block.properties.hinge run function fdoors:door/configure/compile_block_state/append {state:"hinge"}
execute if data storage fdoors:utility new_block.properties.natural run function fdoors:door/configure/compile_block_state/append {state:"natural"}
execute if data storage fdoors:utility new_block.properties.stage run function fdoors:door/configure/compile_block_state/append {state:"stage"}
execute if data storage fdoors:utility new_block.properties.inverted run function fdoors:door/configure/compile_block_state/append {state:"inverted"}
execute if data storage fdoors:utility new_block.properties.instrument run function fdoors:door/configure/compile_block_state/append {state:"instrument"}
execute if data storage fdoors:utility new_block.properties.west run function fdoors:door/configure/compile_block_state/append {state:"west"}
execute if data storage fdoors:utility new_block.properties.disarmed run function fdoors:door/configure/compile_block_state/append {state:"disarmed"}
execute if data storage fdoors:utility new_block.properties.has_bottle_2 run function fdoors:door/configure/compile_block_state/append {state:"has_bottle_2"}
execute if data storage fdoors:utility new_block.properties.lit run function fdoors:door/configure/compile_block_state/append {state:"lit"}
execute if data storage fdoors:utility new_block.properties.axis run function fdoors:door/configure/compile_block_state/append {state:"axis"}

# Remove trailing comma
data modify storage fdoors:utility state_string.value set string storage fdoors:utility state_string.value 0 -1

# Add enclosing square brackets
function fdoors:door/configure/compile_block_state/__build_block_state_string with storage fdoors:utility state_string
