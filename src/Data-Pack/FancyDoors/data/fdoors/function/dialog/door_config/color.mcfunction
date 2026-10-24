# This function builds and shows the left-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.color",\
        fallback: "Outline Color"\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "r",\
            label: "R",\
            start: 0,\
            end: 99,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "g",\
            label: "G",\
            start: 0,\
            end: 99,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "b",\
            label: "B",\
            start: 0,\
            end: 99,\
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
            template: "trigger fdoors.menu.color set $(r)0$(g)0$(b)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.color set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.color.r
execute store result storage fdoors:menu menu.build.inputs[1].initial int 1 run scoreboard players get @s fdoors.menu.settings.color.g
execute store result storage fdoors:menu menu.build.inputs[2].initial int 1 run scoreboard players get @s fdoors.menu.settings.color.b

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/color"
return run function fdoors:dialog/show
