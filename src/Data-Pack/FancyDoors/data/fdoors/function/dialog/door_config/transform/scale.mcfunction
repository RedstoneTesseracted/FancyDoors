# This function builds and shows the left-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.transform.scale",\
        fallback: "Scale"\
    },\
    body: {\
        type: "minecraft:plain_message",\
        contents: {\
            translate: "fdoors.menu.transform.scale.help",\
            fallback: "Display entity scale in open state.  Results here will be divided by 10."\
        }\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "x",\
            label: "10*X",\
            start: 0,\
            end: 99,\
            step: 1,\
            initial: 10\
        },\
        {\
            type: "minecraft:number_range",\
            key: "y",\
            label: "10*Y",\
            start: 0,\
            end: 99,\
            step: 1,\
            initial: 10\
        },\
        {\
            type: "minecraft:number_range",\
            key: "z",\
            label: "10*Z",\
            start: 0,\
            end: 99,\
            step: 1,\
            initial: 10\
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
            template: "trigger fdoors.menu.transform.scale set $(x)0$(y)0$(z)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.transform.scale set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.x
execute store result storage fdoors:menu menu.build.inputs[1].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.y
execute store result storage fdoors:menu menu.build.inputs[2].initial int 1 run scoreboard players get @s fdoors.menu.settings.transform.scale.z

# Show dialog
say triggering scale function!
return run function fdoors:dialog/show
