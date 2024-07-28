"""
This script generates a function capable of building out the block state string
used in the /setblock command.

Unfortunately, Minecraft does not give us a way of looping over the keys of an
NBT compound.  Without a decent way of converting a Properties NBT tag into a
block, we'll have to check for the presense of every single block state
manually.
"""
# Import modules
from urllib import request
import json

# Acquire a complete list of blocks and their possible states from Misode's mcmeta repository
url = r'https://raw.githubusercontent.com/misode/mcmeta/summary/blocks/data.json'
with request.urlopen(url) as f:
    data = json.load(f)

# Extract just the block state names as well as many times they appear
block_states = set()
for states, _ in data.values():
    block_states |= states.keys()

# Generate the function needed to apply all possible block states
for state in block_states:
    print(f'execute if data storage fdoors:utility current_block.{state} run function fdoors:door/close/append_block_state {{state:"{state}"}}')
