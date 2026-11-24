"""
This script is used to update dialog definitions in functions using the JSON version as a template.
* The function and JSON versions of the dialogs share the same folder structure.
* Skip templating a function if it doesn't already exist.
* The dialog SNBT is placed between two comments: "<BEGIN AUTO-GENERATED BLOCK>" and "<END AUTO-GENERATED BLOCK>"

Author: Redstone⁴
"""
import os
from os import path
from json import load, dumps
import re


# Declare commonly-used paths
datapack_dir = path.join(path.dirname(__file__), path.pardir, 'Data-Pack', 'FancyDoors', 'data', 'fdoors')
functions_dir = path.join(datapack_dir, 'function')
dialogs_dir = path.join(datapack_dir, 'dialog')
config_dialog_functions_dir = path.join(functions_dir, 'dialog', 'door_config')
config_dialog_dialogs_dir = path.join(dialogs_dir, 'door_config')


def find_dialog_path(file_path):
    """
    Attempts to find the dialog path given the function path.

    Arguments:
        file_path (str): Path to the function file.
    """
    rel_path = path.abspath(file_path).removeprefix(path.abspath(config_dialog_functions_dir)).removeprefix(path.sep)
    rel_path = path.splitext(rel_path)[0] + '.json'
    dialog_path = path.join(config_dialog_dialogs_dir, rel_path)
    if not path.isfile(dialog_path):
        return None
    return dialog_path


def get_dialog_source(dialog_path):
    """
    Retrieves the dialog JSON corresponding to the given function file path and converts it to a format compatible with mcfunction files.

    Arguments:
        file_path (str): Path to the function file.
    
    Returns:
        (Optional[Dict]): Dialog in an mcfunction-compatible format, or None if no matching dialog file could be found.
    """
    # We parse and dump into JSON here for some quick validation
    with open(dialog_path, mode='r') as rf:
        dialog = dumps(load(rf), indent=4)
    
    # Convert into mcfunction-compatible format
    dialog = re.sub(r'"(.*?)"(?=:)', r'\1', dialog)
    result = ""
    for line in dialog.splitlines():
        result += line + '\\\n'
    return result.removesuffix('\n').removesuffix('\\')


# Process all dialog functions
def update_dialog_template(function_path, dialog_path):
    if file.startswith('__'):
        return
    if path.splitext(function_path)[-1] != '.mcfunction':
        return
    with open(function_path, mode='r') as rf:
        initial_function = rf.read()
    result = ""
    found_start = False
    found_end = False
    found_dialog_source = False
    in_auto_block = False
    for line in initial_function.splitlines():
        if not in_auto_block:
            result += line + '\n'
        if line == '# <BEGIN AUTO-GENERATED BLOCK>':
            found_start = True
            in_auto_block = True
            result += 'data remove storage fdoors:menu menu.build\n'
            result += 'data modify storage fdoors:menu menu.build set value '
            dialog = get_dialog_source(dialog_path)
            if dialog is not None:
                found_dialog_source = True
                result += dialog + '\n'
            else:
                break
        elif line == '# <END AUTO-GENERATED BLOCK>':
            found_end = True
            in_auto_block = False
            result += '# <END AUTO-GENERATED BLOCK>\n'

    # Do NOT save changes if we couldn't find the start/end markers as well as the dialog source
    if not found_start:
        print(f"Couldn't find start tag in {function_path}")
        return
    if not found_end:
        print(f"Couldn't find end tag in {function_path}")
        return
    if not found_dialog_source:
        print(f"Couldn't find dialog source for {function_path}")
        return

    with open(function_path, mode='w') as wf:
        wf.write(result)



for (dirpath, dirnames, filenames) in os.walk(config_dialog_functions_dir):
    for file in filenames:
        file_path = path.join(dirpath, file)
        dialog_path = find_dialog_path(file_path)
        if dialog_path is None:
            continue
        update_dialog_template(file_path, dialog_path)


# Manually update some extra dialogs
update_dialog_template(path.join(functions_dir, 'global_config', 'show_dialog.mcfunction'),
                       path.join(dialogs_dir, 'global_config.json'))

