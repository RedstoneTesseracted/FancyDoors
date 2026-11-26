# This function abstracts setting block display state to better handle differences between versions
data modify storage fdoors:utility temp.block_state set value {Name: "", Properties: {}}
data modify storage fdoors:utility temp.block_state.Name set from storage fdoors:utility show_block.id
data modify storage fdoors:utility temp.block_state.Properties set from storage fdoors:utility show_block.properties
data modify entity @s block_state set from storage fdoors:utility temp.block_state
