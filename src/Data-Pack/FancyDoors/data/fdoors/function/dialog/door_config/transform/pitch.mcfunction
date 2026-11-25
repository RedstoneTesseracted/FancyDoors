# This function builds and shows the pitch-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.transform.pitch",\
        fallback: "Scale"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.transform.pitch.help",\
            fallback: "Display entity pitch rotation when in open state"\
        }\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "angle",\
            label: {\
                translate: "fdoors.menu.angle",\
                fallback: "Angle"\
            },\
            start: -90,\
            end: 90,\
            step: 1,\
            initial: 0\
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
            template: "trigger fdoors.menu.transform.pitch set $(angle)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.transform.pitch set -2147483647"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.pitch

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/transform/pitch"
return run function fdoors:dialog/show
