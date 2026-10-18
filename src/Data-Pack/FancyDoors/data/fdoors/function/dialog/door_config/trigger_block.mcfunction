# This function builds and shows the trigger_block menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:multi_action",\
    title: {\
        translate: "fdoors.menu.trigger.block",\
        fallback: "Block Trigger"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.trigger.block.help",\
            fallback: "Triggers when the block at the controller's position matches a specific state"\
        }\
    },\
    inputs: [\
        {\
            type: "minecraft:single_option",\
            key: "preset",\
            label: "Preset",\
            options: [\
                {\
                    id: "0",\
                    display: "[No change]",\
                    initial: false\
                },\
                {\
                    id: "1",\
                    display: "Lit Redstone Lamp",\
                    initial: false\
                },\
                {\
                    id: "2",\
                    display: "Unpowered Redstone Lamp",\
                    initial: false\
                },\
                {\
                    id: "3",\
                    display: "Powered Pressure Plate",\
                    initial: false\
                },\
                {\
                    id: "4",\
                    display: "Unpowered Pressure Plate",\
                    initial: false\
                },\
                {\
                    id: "5",\
                    display: "Powered Button",\
                    initial: false\
                },\
                {\
                    id: "6",\
                    display: "Unpowered Button",\
                    initial: false\
                },\
                {\
                    id: "7",\
                    display: "Air",\
                    initial: false\
                }\
            ]\
        }\
    ],\
    can_close_with_escape: true,\
    exit_action: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.block set -1"\
        }\
    },\
    columns: 1,\
    actions: [\
        {\
            label: {\
                translate: "fdoors.menu.trigger.block_switch",\
                fallback: "<Block>"\
            },\
            action: {\
                type: "minecraft:run_command",\
                command: "trigger fdoors.menu.block set -2"\
            }\
        },\
        {\
            label: {\
                translate: "fdoors.menu.set",\
                fallback: "Set"\
            },\
            action: {\
                type: "minecraft:dynamic/run_command",\
                template: "trigger fdoors.menu.block set $(preset)"\
            }\
        }\
    ]\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute if score @s fdoors.menu.settings.block matches 0 run data modify storage fdoors:menu menu.build.inputs[0].options[0].initial set value true
execute if score @s fdoors.menu.settings.block matches 1 run data modify storage fdoors:menu menu.build.inputs[0].options[1].initial set value true
execute if score @s fdoors.menu.settings.block matches 2 run data modify storage fdoors:menu menu.build.inputs[0].options[2].initial set value true
execute if score @s fdoors.menu.settings.block matches 3 run data modify storage fdoors:menu menu.build.inputs[0].options[3].initial set value true
execute if score @s fdoors.menu.settings.block matches 4 run data modify storage fdoors:menu menu.build.inputs[0].options[4].initial set value true
execute if score @s fdoors.menu.settings.block matches 5 run data modify storage fdoors:menu menu.build.inputs[0].options[5].initial set value true
execute if score @s fdoors.menu.settings.block matches 6 run data modify storage fdoors:menu menu.build.inputs[0].options[6].initial set value true
execute if score @s fdoors.menu.settings.block matches 7 run data modify storage fdoors:menu menu.build.inputs[0].options[7].initial set value true

# Show dialog
return run function fdoors:dialog/show
