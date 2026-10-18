# This function builds and shows the left-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.transform.left_rotation",\
        fallback: "Left Rotation"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.transform.left_rotation.help",\
            fallback: "Display entity left-rotation in open state."\
        }\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "x",\
            label: {\
                translate: "fdoors.menu.transform.angle",\
                fallback: "Angle"\
            },\
            start: 0,\
            end: 360,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:single_option",\
            key: "axis",\
            label: {\
                translate: "fdoors.menu.transform.axis",\
                fallback: "Axis"\
            },\
            options: [\
                {\
                    id: "0",\
                    display: "X",\
                    initial: false\
                },\
                {\
                    id: "1",\
                    display: "Y",\
                    initial: false\
                },\
                {\
                    id: "2",\
                    display: "Z",\
                    initial: false\
                }\
            ]\
        }\
    ],\
    can_close_with_escape: true,\
    yes: {\
        label: {\
            translate: "fdoors.menu.set",\
            fallback: "Set"\
        },\
        action: {\
            type: "minecraft:dynamic/run_command",\
            template: "trigger fdoors.menu.transform.rotation set $(angle)$(axis)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.transform.rotation set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.l_rotation.angle
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 0 run data modify storage fdoors:menu menu.build.inputs[1].options[0].initial set value true
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 1 run data modify storage fdoors:menu menu.build.inputs[1].options[1].initial set value true
execute if score @s fdoors.menu.settings.transform.l_rotation.axis matches 2 run data modify storage fdoors:menu menu.build.inputs[1].options[2].initial set value true

# Show dialog
return run function fdoors:dialog/show
