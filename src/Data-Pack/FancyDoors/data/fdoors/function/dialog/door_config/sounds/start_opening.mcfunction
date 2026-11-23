# This function builds and shows the start-opening sound menu using current values

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.menu.sounds.start_opening.title",\
        fallback: "Sounds - Start Opening"\
    },\
    inputs: [\
        {\
            type: "minecraft:single_option",\
            key: "sound",\
            label: {\
                translate: "fdoors.menu.sounds.sound_preset",\
                fallback: "Sound"\
            },\
            options: [\
                {\
                    id: "0",\
                    display: "minecraft:entity.iron_golem.step",\
                    initial: false\
                },\
                {\
                    id: "1",\
                    display: "minecraft:entity.iron_golem.attack",\
                    initial: false\
                },\
                {\
                    id: "2",\
                    display: "minecraft:block.chest.close",\
                    initial: false\
                },\
                {\
                    id: "3",\
                    display: "minecraft:block.chest.open",\
                    initial: false\
                },\
                {\
                    id: "4",\
                    display: "minecraft:block.wooden_door.close",\
                    initial: false\
                },\
                {\
                    id: "5",\
                    display: "minecraft:block.wooden_door.open",\
                    initial: false\
                },\
                {\
                    id: "6",\
                    display: "minecraft:block.iron_door.close",\
                    initial: false\
                },\
                {\
                    id: "7",\
                    display: "minecraft:block.iron_door.open",\
                    initial: false\
                },\
                {\
                    id: "8",\
                    display: "minecraft:block.piston.contract",\
                    initial: false\
                },\
                {\
                    id: "9",\
                    display: "minecraft:block.piston.extend",\
                    initial: false\
                },\
                {\
                    id: "10",\
                    display: "minecraft:block.fence_gate.close",\
                    initial: false\
                },\
                {\
                    id: "11",\
                    display: "minecraft:block.fence_gate.open",\
                    initial: false\
                },\
                {\
                    id: "12",\
                    display: "minecraft:block.vault.close_shutter",\
                    initial: false\
                },\
                {\
                    id: "13",\
                    display: "minecraft:block.vault.open_shutter",\
                    initial: false\
                },\
                {\
                    id: "14",\
                    display: "minecraft:entity.enderman.teleport",\
                    initial: false\
                },\
                {\
                    id: "15",\
                    display: "minecraft:block.fire.extinguish",\
                    initial: false\
                }\
            ]\
        },\
        {\
            type: "minecraft:number_range",\
            key: "pitch",\
            label: {\
                translate: "fdoors.menu.sounds.pitch",\
                fallback: "Pitch * 10",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.menu.sounds.pitch.help",\
                        fallback: "The number shown here is divided by 10 before being passed to the /playsound command"\
                    }\
                }\
            },\
            start: 0,\
            end: 20,\
            step: 1,\
            initial: 10\
        },\
        {\
            type: "minecraft:number_range",\
            key: "volume",\
            label: {\
                translate: "fdoors.menu.sounds.volume",\
                fallback: "Volume * 10",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.menu.sounds.volume.help",\
                        fallback: "The number shown here is divided by 10 before being passed to the /playsound command"\
                    }\
                }\
            },\
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
            template: "trigger fdoors.menu.sounds.start_opening set $(sound)0$(volume)0$(pitch)"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        },\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger fdoors.menu.sounds.start_opening set -1"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
execute store result storage fdoors:menu menu.build.inputs[1].initial int 1 run scoreboard players get @s fdoors.menu.settings.sounds.start_opening.pitch
execute store result storage fdoors:menu menu.build.inputs[2].initial int 1 run scoreboard players get @s fdoors.menu.settings.sounds.start_opening.volume
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 0 run data modify storage fdoors:menu menu.build.inputs[0].options[0].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 1 run data modify storage fdoors:menu menu.build.inputs[0].options[1].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 2 run data modify storage fdoors:menu menu.build.inputs[0].options[2].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 3 run data modify storage fdoors:menu menu.build.inputs[0].options[3].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 4 run data modify storage fdoors:menu menu.build.inputs[0].options[4].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 5 run data modify storage fdoors:menu menu.build.inputs[0].options[5].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 6 run data modify storage fdoors:menu menu.build.inputs[0].options[6].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 7 run data modify storage fdoors:menu menu.build.inputs[0].options[7].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 8 run data modify storage fdoors:menu menu.build.inputs[0].options[8].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 9 run data modify storage fdoors:menu menu.build.inputs[0].options[9].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 10 run data modify storage fdoors:menu menu.build.inputs[0].options[10].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 11 run data modify storage fdoors:menu menu.build.inputs[0].options[11].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 12 run data modify storage fdoors:menu menu.build.inputs[0].options[12].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 13 run data modify storage fdoors:menu menu.build.inputs[0].options[13].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 14 run data modify storage fdoors:menu menu.build.inputs[0].options[14].initial set value true
execute if score @s fdoors.menu.settings.sounds.start_opening.sound matches 15 run data modify storage fdoors:menu menu.build.inputs[0].options[15].initial set value true

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:dialog/door_config/sounds/start_opening"
return run function fdoors:dialog/show
