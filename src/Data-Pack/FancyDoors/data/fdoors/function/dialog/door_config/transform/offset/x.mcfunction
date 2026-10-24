# This function builds and shows the x-translation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.transform.offset.x",\
        fallback: "X-Offset"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.transform.left_rotation.help",\
            fallback: "Display entity x-translation when in open state.  Results here will be divided by 10."\
        }\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "value",\
            label: "10*X",\
            start: -200,\
            end: 200,\
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
            template: "trigger fdoors.menu.transform.offset set $(value)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.transform.offset set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.offset.x

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/transform/offset/x"
return run function fdoors:dialog/show
