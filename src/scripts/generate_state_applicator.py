"""
This script generates a function capable of building out the block state string
used in the /setblock command.

Unfortunately, Minecraft does not give us a way of looping over the keys of an
NBT compound.  Without a decent way of converting a properties NBT tag into a
block, we'll have to check for the presence of every single block state
manually.
"""
# Import modules
from urllib import request
import json
from os import path
import os


def generate_state_builder(version: str) -> str:
    """
    Downloads block state information from Misode's mcmeta repository and uses it to build the build_block_state_string function

    Arguments:
        version (str): Game version to download data for
    
    Returns:
        (str): Contents of the build_block_state_string function
    """
    # Acquire a complete list of blocks and their possible states from Misode's mcmeta repository
    url = f'https://raw.githubusercontent.com/misode/mcmeta/{version}-summary/blocks/data.json'
    with request.urlopen(url) as f:
        data = json.load(f)
    if len(data) == 0:
        raise Exception("An unknown error occurred that caused the collected data tag to be zero-length!")

    # Extract just the block state names as well as many times they appear
    block_states = set()
    for states, _ in data.values():
        block_states |= states.keys()

    # Head block of function
    result = """# This function does a brute-force check for 
# the presence of every block state in order
# to compile the block state string compatible
# with /setblock
#
# The resulting string is stored in fdoors:utility.state_string.value
# (the extra nesting is necessary for function macros)
#
# This is called from fdoors:door/configure/add_block

# Check for EVERY block state and append value if state is present
"""

    # Write a command for each block state type
    for state in block_states:
        result += f'execute if data storage fdoors:utility new_block.properties.{state} run function fdoors:door/configure/compile_block_state/append {{state:"{state}"}}\n'

    # Additional string manipulation (remove trailing comma, add square brackets)
    result += """
# Remove trailing comma
data modify storage fdoors:utility state_string.value set string storage fdoors:utility state_string.value 0 -1

# Add enclosing square brackets
function fdoors:door/configure/compile_block_state/__build_block_state_string with storage fdoors:utility state_string
"""

    return result


# Generate overlays for multiple versions
versions = [
    '1.21.6',
    '1.21.9',
    '1.21.11',
    '26.1',
    '26.2',
    '26.3'
]
datapack_dir = path.join(path.pardir, 'Data-Pack', 'FancyDoors')

for version in versions:
    function_dir = path.join(datapack_dir, version, 'data', 'fdoors', 'function', 'door', 'configure', 'compile_block_state')
    os.makedirs(function_dir, exist_ok=True)
    with open(path.join(function_dir, 'build_block_state_string.mcfunction'), mode='w') as wf:
        wf.write(generate_state_builder(version))

# Write the latest version to the base path
with open(path.join(datapack_dir, 'data', 'fdoors', 'function', 'door', 'configure', 'compile_block_state', 'build_block_state_string.mcfunction'), mode='w') as wf:
    wf.write(generate_state_builder(version))
