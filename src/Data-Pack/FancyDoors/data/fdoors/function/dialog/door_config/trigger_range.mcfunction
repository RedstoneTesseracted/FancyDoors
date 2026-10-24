# This function builds and shows the trigger_range menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:multi_action",\
    title: {\
        translate: "fdoors.menu.trigger.range",\
        fallback: "Range Trigger"\
    },\
    inputs: [\
        {\
            type: "minecraft:number_range",\
            key: "min",\
            label: {\
                translate: "fdoors.menu.trigger.range_min_label",\
                fallback: "Minimum Range (Blocks)"\
            },\
            start: 0,\
            end: 20,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "max",\
            label: {\
                translate: "fdoors.menu.trigger.range_max_label",\
                fallback: "Maximum Range (Blocks)"\
            },\
            start: 0,\
            end: 20,\
            step: 1,\
            initial: 5\
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
            command: "trigger fdoors.menu.range set -1"\
        }\
    },\
    columns: 1,\
    actions: [\
        {\
            label: {\
                translate: "fdoors.menu.trigger.range_switch",\
                fallback: "<Range>"\
            },\
            action: {\
                type: "minecraft:run_command",\
                command: "trigger fdoors.menu.range set -2"\
            }\
        },\
        {\
            label: {\
                translate: "fdoors.menu.set",\
                fallback: "Set"\
            },\
            action: {\
                type: "minecraft:dynamic/run_command",\
                template: "trigger fdoors.menu.range set $(min)0$(max)"\
            }\
        }\
    ]\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[0].initial int 1 run scoreboard players get @s fdoors.menu.settings.range.min
execute store result storage fdoors:menu menu.build.inputs[1].initial int 1 run scoreboard players get @s fdoors.menu.settings.range.max

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/trigger_range"
return run function fdoors:dialog/show
