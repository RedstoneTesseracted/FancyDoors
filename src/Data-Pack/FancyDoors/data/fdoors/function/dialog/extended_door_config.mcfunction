# Builds and shows the alternative door configuration dialog

# Declare template
# <BEGIN AUTO-GENERATED BLOCK>
data remove storage fdoors:menu menu.build
data modify storage fdoors:menu menu.build set value {\
    type: "minecraft:confirmation",\
    title: {\
        translate: "fdoors.extended_menu.title",\
        fallback: "Extended Door Config"\
    },\
    inputs: [\
        {\
            type: "minecraft:single_option",\
            key: "trigger_type",\
            label: {\
                translate: "fdoors.extended_menu.trigger_type",\
                fallback: "Trigger Type"\
            },\
            options: [\
                {\
                    id: "range",\
                    initial: false\
                },\
                {\
                    id: "block",\
                    initial: false\
                },\
                {\
                    id: "item",\
                    initial: false\
                },\
                {\
                    id: "predicate",\
                    initial: false\
                }\
            ]\
        },\
        {\
            type: "minecraft:number_range",\
            key: "trigger_range_min",\
            label: {\
                translate: "fdoors.extended_menu.trigger.min",\
                fallback: "Trigger Minimum Range",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.min.help",\
                        fallback: "Only applies when \"trigger type\" is \"range\" or \"item\""\
                    }\
                }\
            },\
            start: 0,\
            end: 20,\
            step: 0.1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "trigger_range_max",\
            label: {\
                translate: "fdoors.extended_menu.trigger.max",\
                fallback: "Trigger Maximum Range",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.max.help",\
                        fallback: "Only applies when \"trigger type\" is \"range\" or \"item\""\
                    }\
                }\
            },\
            start: 0,\
            end: 20,\
            step: 0.1,\
            initial: 5\
        },\
        {\
            type: "minecraft:text",\
            key: "trigger_block",\
            label: {\
                translate: "fdoors.extended_menu.trigger.block",\
                fallback: "Trigger Block State",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.block.help",\
                        fallback: "Only applies when \"trigger type\" is \"block\""\
                    }\
                }\
            },\
            initial: "minecraft:air",\
            max_length: 64\
        },\
        {\
            type: "minecraft:text",\
            key: "trigger_item",\
            label: {\
                translate: "fdoors.extended_menu.trigger.item",\
                fallback: "Trigger Item ID",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.item.help",\
                        fallback: "Only applies when \"trigger type\" is \"item\""\
                    }\
                }\
            },\
            initial: "",\
            max_length: 64\
        },\
        {\
            type: "minecraft:single_option",\
            key: "trigger_item_components_set",\
            label: {\
                translate: "fdoors.extended_menu.trigger.item.components",\
                fallback: "Trigger Item Components",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.item.components.help",\
                        fallback: "Only applies when \"trigger type\" is \"item\""\
                    }\
                }\
            },\
            options: [\
                {\
                    id: "0",\
                    display: {\
                        translate: "fdoors.extended_menu.trigger.item.components.no_change",\
                        fallback: "No Change"\
                    },\
                    initial: false\
                },\
                {\
                    id: "1",\
                    display: {\
                        translate: "fdoors.extended_menu.trigger.item.components.copy_mainhand",\
                        fallback: "Copy From Main Hand"\
                    },\
                    initial: false\
                },\
                {\
                    id: "2",\
                    display: {\
                        translate: "fdoors.extended_menu.trigger.item.components.copy_offhand",\
                        fallback: "Copy From Off-Hand"\
                    },\
                    initial: false\
                },\
                {\
                    id: "3",\
                    display: {\
                        translate: "fdoors.extended_menu.trigger.item.components.clear",\
                        fallback: "Clear",\
                        color: "red"\
                    },\
                    initial: false\
                }\
            ]\
        },\
        {\
            type: "minecraft:text",\
            key: "trigger_predicate",\
            label: {\
                translate: "fdoors.extended_menu.trigger.predicate",\
                fallback: "Trigger Predicate",\
                hover_event: {\
                    action: "show_text",\
                    value: {\
                        translate: "fdoors.extended_menu.trigger.predicate.help",\
                        fallback: "Only applies when \"trigger type\" is \"predicate\""\
                    }\
                }\
            },\
            max_length: 128,\
            initial: ""\
        },\
        {\
            type: "minecraft:number_range",\
            key: "duration",\
            label: {\
                translate: "fdoors.extended_menu.duration",\
                fallback: "Duration"\
            },\
            start: 0,\
            end: 120,\
            step: 1,\
            initial: 20\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_offset_x",\
            label: {\
                translate: "fdoors.extended_menu.transform.offset.x",\
                fallback: "Transform Offset X"\
            },\
            start: -20,\
            end: 20,\
            step: 0.1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_offset_y",\
            label: {\
                translate: "fdoors.extended_menu.transform.offset.y",\
                fallback: "Transform Offset Y"\
            },\
            start: -20,\
            end: 20,\
            step: 0.1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_offset_z",\
            label: {\
                translate: "fdoors.extended_menu.transform.offset.z",\
                fallback: "Transform Offset Z"\
            },\
            start: -20,\
            end: 20,\
            step: 0.1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_scale_x",\
            label: {\
                translate: "fdoors.extended_menu.transform.scale.x",\
                fallback: "Transform Scale X"\
            },\
            start: 0,\
            end: 10,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_scale_y",\
            label: {\
                translate: "fdoors.extended_menu.transform.scale.y",\
                fallback: "Transform Scale Y"\
            },\
            start: 0,\
            end: 10,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_scale_z",\
            label: {\
                translate: "fdoors.extended_menu.transform.scale.z",\
                fallback: "Transform Scale Z"\
            },\
            start: 0,\
            end: 10,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_yaw",\
            label: {\
                translate: "fdoors.extended_menu.transform.yaw",\
                fallback: "Transform Yaw"\
            },\
            start: 0,\
            end: 360,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "transform_pitch",\
            label: {\
                translate: "fdoors.extended_menu.transform.pitch",\
                fallback: "Transform Pitch"\
            },\
            start: -90,\
            end: 90,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:text",\
            key: "start_open_sound",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_open",\
                fallback: "Start Opening Sound"\
            },\
            initial: "",\
            max_length: 64\
        },\
        {\
            type: "minecraft:number_range",\
            key: "start_open_sound_pitch",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_open_pitch",\
                fallback: "Start Opening Sound Pitch"\
            },\
            start: 0,\
            end: 2,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "start_open_sound_volume",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_open_volume",\
                fallback: "Start Opening Sound Volume"\
            },\
            start: 0,\
            end: 5,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:text",\
            key: "finish_open_sound",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_open",\
                fallback: "Finish Opening Sound"\
            },\
            initial: " ",\
            max_length: 64\
        },\
        {\
            type: "minecraft:number_range",\
            key: "finish_open_sound_pitch",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_open_pitch",\
                fallback: "Finish Opening Sound Pitch"\
            },\
            start: 0,\
            end: 2,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "finish_open_sound_volume",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_open_volume",\
                fallback: "Finish Opening Sound Volume"\
            },\
            start: 0,\
            end: 5,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:text",\
            key: "start_close_sound",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_close",\
                fallback: "Start Closing Sound"\
            },\
            initial: " ",\
            max_length: 64\
        },\
        {\
            type: "minecraft:number_range",\
            key: "start_close_sound_pitch",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_close_pitch",\
                fallback: "Start Closing Sound Pitch"\
            },\
            start: 0,\
            end: 2,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "start_close_sound_volume",\
            label: {\
                translate: "fdoors.extended_menu.sound.start_close_volume",\
                fallback: "Start Closing Sound Volume"\
            },\
            start: 0,\
            end: 5,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:text",\
            key: "finish_close_sound",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_close",\
                fallback: "Finish Closing Sound"\
            },\
            initial: " ",\
            max_length: 64\
        },\
        {\
            type: "minecraft:number_range",\
            key: "finish_close_sound_pitch",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_close_pitch",\
                fallback: "Finish Closing Sound Pitch"\
            },\
            start: 0,\
            end: 2,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "finish_close_sound_volume",\
            label: {\
                translate: "fdoors.extended_menu.sound.finish_close_volume",\
                fallback: "Finish Closing Sound Volume"\
            },\
            start: 0,\
            end: 5,\
            step: 0.1,\
            initial: 1\
        },\
        {\
            type: "minecraft:number_range",\
            key: "outline_color_red",\
            label: {\
                translate: "fdoors.extended_menu.outline_color.red",\
                fallback: "Outline Color (Red)",\
                color: "#ff0000"\
            },\
            start: 0,\
            end: 255,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "outline_color_green",\
            label: {\
                translate: "fdoors.extended_menu.outline_color.green",\
                fallback: "Outline Color (Green)",\
                color: "#00ff00"\
            },\
            start: 0,\
            end: 255,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:number_range",\
            key: "outline_color_blue",\
            label: {\
                translate: "fdoors.extended_menu.outline_color.blue",\
                fallback: "Outline Color (Blue)",\
                color: "#0000ff"\
            },\
            start: 0,\
            end: 255,\
            step: 1,\
            initial: 0\
        },\
        {\
            type: "minecraft:boolean",\
            key: "remove_door",\
            label: {\
                translate: "fdoors.extended_menu.remove_door",\
                fallback: "Remove Door",\
                color: "red"\
            },\
            on_true: "1",\
            on_false: "0",\
            initial: false\
        }\
    ],\
    can_close_with_escape: true,\
    yes: {\
        label: {\
            translate: "fdoors.menu.save",\
            fallback: "Save"\
        },\
        action: {\
            type: "minecraft:dynamic/run_command",\
            template: "function fdoors:extended_menu/apply {trigger_type: $(trigger_type), trigger_range_min: $(trigger_range_min), trigger_range_max: $(trigger_range_max), trigger_block: \"$(trigger_block)\", trigger_item: \"$(trigger_item)\", trigger_item_components_set: $(trigger_item_components_set), trigger_predicate: \"$(trigger_predicate)\", duration: $(duration), transform_offset_x: $(transform_offset_x), transform_offset_y: $(transform_offset_y), transform_offset_z: $(transform_offset_z), transform_scale_x: $(transform_scale_x), transform_scale_y: $(transform_scale_y), transform_scale_z: $(transform_scale_z), transform_yaw: $(transform_yaw), transform_pitch: $(transform_pitch), start_open_sound: \"$(start_open_sound)\", start_open_sound_pitch: $(start_open_sound_pitch), start_open_sound_volume: $(start_open_sound_volume), finish_open_sound: \"$(finish_open_sound)\", finish_open_sound_pitch: $(finish_open_sound_pitch), finish_open_sound_volume: $(finish_open_sound_volume), start_close_sound: \"$(start_close_sound)\", start_close_sound_pitch: $(start_close_sound_pitch), start_close_sound_volume: $(start_close_sound_volume), finish_close_sound: \"$(finish_close_sound)\", finish_close_sound_pitch: $(finish_close_sound_pitch), finish_close_sound_volume: $(finish_close_sound_volume), outline_color_red: $(outline_color_red), outline_color_green: $(outline_color_green), outline_color_blue: $(outline_color_blue), remove_door: $(remove_door)}"\
        }\
    },\
    no: {\
        label: {\
            translate: "fdoors.menu.cancel",\
            fallback: "Cancel"\
        }\
    }\
}
# <END AUTO-GENERATED BLOCK>

# Populate initial value(s)
# trigger.type
execute if data storage fdoors:utility config.trigger{type: "range"} run data modify storage fdoors:menu menu.build.inputs[{key: "trigger_type"}].options[{id: "range"}].initial set value true
execute if data storage fdoors:utility config.trigger{type: "block"} run data modify storage fdoors:menu menu.build.inputs[{key: "trigger_type"}].options[{id: "block"}].initial set value true
execute if data storage fdoors:utility config.trigger{type: "item"} run data modify storage fdoors:menu menu.build.inputs[{key: "trigger_type"}].options[{id: "item"}].initial set value true
execute if data storage fdoors:utility config.trigger{type: "predicate"} run data modify storage fdoors:menu menu.build.inputs[{key: "trigger_type"}].options[{id: "predicate"}].initial set value true
# trigger.args.min
execute store result score fdoors.min fdoors.local run data get storage fdoors:utility config.trigger.args.min 10
execute if score fdoors.min fdoors.local matches ..0 run scoreboard players set fdoors.min fdoors.local 0
execute if score fdoors.min fdoors.local matches 200.. run scoreboard players set fdoors.min fdoors.local 200
execute store result storage fdoors:menu menu.build.inputs[{key: "trigger_range_min"}].initial float 0.1 run scoreboard players get fdoors.min fdoors.local
# trigger.args.max
execute store result score fdoors.max fdoors.local run data get storage fdoors:utility config.trigger.args.max 10
execute if score fdoors.max fdoors.local matches ..0 run scoreboard players set fdoors.max fdoors.local 0
execute if score fdoors.max fdoors.local matches 200.. run scoreboard players set fdoors.max fdoors.local 200
execute store result storage fdoors:menu menu.build.inputs[{key: "trigger_range_max"}].initial float 0.1 run scoreboard players get fdoors.max fdoors.local
# trigger.args.block
data modify storage fdoors:menu menu.build.inputs[{key: "trigger_block"}].initial set from storage fdoors:utility config.trigger.args.block
# trigger.args.item.id
data modify storage fdoors:menu menu.build.inputs[{key: "trigger_item"}].initial set from storage fdoors:utility config.trigger.args.item.id
# trigger.args.predicate
data modify storage fdoors:menu menu.build.inputs[{key: "trigger_predicate"}].initial set from storage fdoors:utility config.trigger.args.predicate
# duration
execute store result score fdoors.duration fdoors.local run data get storage fdoors:utility config.duration
execute if score fdoors.duration fdoors.local matches ..0 run scoreboard players set fdoors.duration fdoors.local 0
execute if score fdoors.duration fdoors.local matches 120.. run scoreboard players set fdoors.duration fdoors.local 120
execute store result storage fdoors:menu menu.build.inputs[{key: "duration"}].initial int 1 run scoreboard players get fdoors.duration fdoors.local
# transform.translation[0]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.translation[0] 10
execute if score fdoors.value fdoors.local matches ..-200 run scoreboard players set fdoors.value fdoors.local -200
execute if score fdoors.value fdoors.local matches 200.. run scoreboard players set fdoors.value fdoors.local 200
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_offset_x"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.translation[1]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.translation[1] 10
execute if score fdoors.value fdoors.local matches ..-200 run scoreboard players set fdoors.value fdoors.local -200
execute if score fdoors.value fdoors.local matches 200.. run scoreboard players set fdoors.value fdoors.local 200
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_offset_y"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.translation[2]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.translation[2] 10
execute if score fdoors.value fdoors.local matches ..-200 run scoreboard players set fdoors.value fdoors.local -200
execute if score fdoors.value fdoors.local matches 200.. run scoreboard players set fdoors.value fdoors.local 200
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_offset_z"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.scale[0]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.scale[0] 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 100.. run scoreboard players set fdoors.value fdoors.local 100
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_scale_x"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.scale[1]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.scale[1] 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 100.. run scoreboard players set fdoors.value fdoors.local 100
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_scale_y"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.scale[2]
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.scale[2] 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 100.. run scoreboard players set fdoors.value fdoors.local 100
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_scale_z"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# transform.yaw
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.yaw 1
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 360.. run scoreboard players set fdoors.value fdoors.local 360
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_yaw"}].initial float 1 run scoreboard players get fdoors.value fdoors.local
# transform.pitch
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.transform.pitch 1
execute if score fdoors.value fdoors.local matches ..-90 run scoreboard players set fdoors.value fdoors.local -90
execute if score fdoors.value fdoors.local matches 90.. run scoreboard players set fdoors.value fdoors.local 90
execute store result storage fdoors:menu menu.build.inputs[{key: "transform_pitch"}].initial float 1 run scoreboard players get fdoors.value fdoors.local
# sounds.start_open.sound
data modify storage fdoors:menu menu.build.inputs[{key: "start_open_sound"}].initial set from storage fdoors:utility config.sounds.start_open.sound
# sounds.start_open.pitch
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.start_open.pitch 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "start_open_sound_pitch"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.start_open.volume
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.start_open.volume 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "start_open_sound_volume"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.finish_open.sound
data modify storage fdoors:menu menu.build.inputs[{key: "finish_open_sound"}].initial set from storage fdoors:utility config.sounds.finish_open.sound
# sounds.finish_open.pitch
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.finish_open.pitch 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "finish_open_sound_pitch"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.finish_open.volume
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.finish_open.volume 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "finish_open_sound_volume"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.start_close.sound
data modify storage fdoors:menu menu.build.inputs[{key: "start_close_sound"}].initial set from storage fdoors:utility config.sounds.start_close.sound
# sounds.start_close.pitch
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.start_close.pitch 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "start_close_sound_pitch"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.start_close.volume
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.start_close.volume 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "start_close_sound_volume"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.finish_close.sound
data modify storage fdoors:menu menu.build.inputs[{key: "finish_close_sound"}].initial set from storage fdoors:utility config.sounds.finish_close.sound
# sounds.finish_close.pitch
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.finish_close.pitch 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "finish_close_sound_pitch"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# sounds.finish_close.volume
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.sounds.finish_close.volume 10
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 20.. run scoreboard players set fdoors.value fdoors.local 20
execute store result storage fdoors:menu menu.build.inputs[{key: "finish_close_sound_volume"}].initial float 0.1 run scoreboard players get fdoors.value fdoors.local
# color.r
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.color.r 255
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 255.. run scoreboard players set fdoors.value fdoors.local 255
execute store result storage fdoors:menu menu.build.inputs[{key: "outline_color_red"}].initial int 1 run scoreboard players get fdoors.value fdoors.local
# color.g
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.color.g 255
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 255.. run scoreboard players set fdoors.value fdoors.local 255
execute store result storage fdoors:menu menu.build.inputs[{key: "outline_color_green"}].initial int 1 run scoreboard players get fdoors.value fdoors.local
# color.b
execute store result score fdoors.value fdoors.local run data get storage fdoors:utility config.color.b 255
execute if score fdoors.value fdoors.local matches ..0 run scoreboard players set fdoors.value fdoors.local 0
execute if score fdoors.value fdoors.local matches 255.. run scoreboard players set fdoors.value fdoors.local 255
execute store result storage fdoors:menu menu.build.inputs[{key: "outline_color_blue"}].initial int 1 run scoreboard players get fdoors.value fdoors.local

# Show dialog
data modify storage fdoors:menu panic.context set value "fdoors:global_config/show_dialog"
return run function fdoors:dialog/show
