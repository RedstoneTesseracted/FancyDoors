# This function builds and shows the duration menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.duration",\
        fallback: "Duration"\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "duration",\
            label: {\
                translate: "fdoors.menu.duration_label",\
                fallback: "Ticks"\
            },\
            start: 1,\
            end: 120,\
            step: 1,\
            initial: 1\
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
            template: "trigger fdoors.menu.duration set $(duration)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.duration set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.duration

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/duration"
return run function fdoors:dialog/show
