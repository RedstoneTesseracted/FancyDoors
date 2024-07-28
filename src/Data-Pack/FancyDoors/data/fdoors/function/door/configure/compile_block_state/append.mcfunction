# This is used by fdoors:door/configure/compile_block_state/build_block_state_string
# to append the given state to the working block state string

# Set up the function macro
$data modify storage fdoors:utility append_args set value {state: "$(state)"}
$data modify storage fdoors:utility append_args.value set from storage fdoors:utility new_block.Properties.$(state)
data modify storage fdoors:utility append_args.working set from storage fdoors:utility state_string.value
function fdoors:door/configure/compile_block_state/__append with storage fdoors:utility append_args
