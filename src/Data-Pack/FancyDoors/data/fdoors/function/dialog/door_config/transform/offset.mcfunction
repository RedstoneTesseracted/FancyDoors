# This function builds and shows the left-rotation menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:multi_action",\
    title: {\
        translate: "fdoors.menu.transform.translation",\
        fallback: "Translation"\
    },\
    inputs: [],\
    can_close_with_escape: true,\
    exit_action: {\
        label: {\
            translate: "fdoors.menu.back",\
            fallback: "Back"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.goto set 4"\
        }\
    },\
    actions: [\
        {\
            label: {\
                translate: "fdoors.menu.transform.offset.x_label",\
                fallback: "X: %s",\
                with: [\
                    1\
                ]\
            },\
            action: {\
                type: "minecraft:run_command",\
                command: "trigger fdoors.menu.goto set 411"\
            }\
        },\
        {\
            label: {\
                translate: "fdoors.menu.transform.offset.y_label",\
                fallback: "Y: %s",\
                with: [\
                    1\
                ]\
            },\
            action: {\
                type: "minecraft:run_command",\
                command: "trigger fdoors.menu.goto set 412"\
            }\
        },\
        {\
            label: {\
                translate: "fdoors.menu.transform.offset.z_label",\
                fallback: "Z: %s",\
                with: [\
                    1\
                ]\
            },\
            action: {\
                type: "minecraft:run_command",\
                command: "trigger fdoors.menu.goto set 413"\
            }\
        }\
    ]\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.actions[0].label.with[0] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.x
execute store result storage fdoors:menu menu.build.actions[1].label.with[0] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.y
execute store result storage fdoors:menu menu.build.actions[2].label.with[0] float 0.1 run scoreboard players get @s fdoors.menu.settings.transform.offset.z

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/transform/offset"
return run function fdoors:dialog/show
