# This function builds and shows the yaw-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.transform.yaw",\
        fallback: "Scale"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.transform.yaw.help",\
            fallback: "Display entity yaw rotation when in open state"\
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
            start: 0,\
            end: 360,\
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
            template: "trigger fdoors.menu.transform.yaw set $(angle)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.transform.yaw set -2147483647"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.yaw

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/transform/yaw"
return run function fdoors:dialog/show
