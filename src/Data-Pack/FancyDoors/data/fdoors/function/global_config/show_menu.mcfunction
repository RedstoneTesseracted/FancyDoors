# Shows the global configuration menu to the player that ran this function

# TITLE
tellraw @s {translate: "fdoors.menu.global_config.title", fallback: "Administrative Config:", underlined: true, color: "aqua", bold: true}
tellraw @s ""

# ENABLE/DISABLE BARRIERS
execute if score fdoors.enable_barriers fdoors.config matches 0 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_barriers",\
        fallback: "Allow Barriers",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.disabled",\
        fallback: "Disabled",\
        color: "red",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/enable_barriers"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    }\
]
execute if score fdoors.enable_barriers fdoors.config matches 1 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_barriers",\
        fallback: "Allow Barriers",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.enable",\
        fallback: "Enabled",\
        color: "green",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/disable_barriers"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_barriers.help",\
                fallback: "Allow barrier blocks to be added to doors"\
            }\
        }\
    }\
]


# ENABLE/DISABLE BEDROCK
execute if score fdoors.enable_bedrock fdoors.config matches 0 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_bedrock",\
        fallback: "Allow Bedrock",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.disabled",\
        fallback: "Disabled",\
        color: "red",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/enable_bedrock"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    }\
]
execute if score fdoors.enable_bedrock fdoors.config matches 1 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_bedrock",\
        fallback: "Allow Bedrock",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.enable",\
        fallback: "Enabled",\
        color: "green",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/disable_bedrock"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_bedrock.help",\
                fallback: "Allow bedrock to be added to doors"\
            }\
        }\
    }\
]


# ENABLE/DISABLE BLOCK ENTITIES
execute if score fdoors.enable_block_entities fdoors.config matches 0 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_block_entities",\
        fallback: "Allow Block Entities",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.disabled",\
        fallback: "Disabled",\
        color: "red",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/enable_block_entities"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    }\
]
execute if score fdoors.enable_block_entities fdoors.config matches 1 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_block_entities",\
        fallback: "Allow Block Entities",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.enable",\
        fallback: "Enabled",\
        color: "green",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/disable_block_entities"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Allow block entities to be added to doors.\nWARNING: Block entity data is lost every time it moves with the door!"\
            }\
        }\
    }\
]


# ENABLE/DISABLE WELCOME MESSAGE
execute if score fdoors.enable_welcome_message fdoors.config matches 0 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_welcome_message",\
        fallback: "Show Welcome Message",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.disabled",\
        fallback: "Disabled",\
        color: "red",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/enable_welcome_message"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    }\
]
execute if score fdoors.enable_welcome_message fdoors.config matches 1 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_welcome_message",\
        fallback: "Show Welcome Message",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.enable",\
        fallback: "Enabled",\
        color: "green",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/disable_welcome_message"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_welcome_message.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_block_entities.help",\
                fallback: "Shows a welcome message for all new players that log in"\
            }\
        }\
    }\
]


# ENABLE/DISABLE EXTENDED MENU
execute if score @s fdoors.extended_menu matches 0 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_extended_menu",\
        fallback: "Better Menu",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.disabled",\
        fallback: "Disabled",\
        color: "red",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/enable_extended_menu"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    }\
]
execute if score @s fdoors.extended_menu matches 1 run tellraw @s \
[\
    {\
        translate: "fdoors.menu.global_config.enable_extended_menu",\
        fallback: "Better Menu",\
        color: "green",\
        bold: false,\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        text: ": [",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        translate: "fdoors.menu.global_config.value.enable",\
        fallback: "Enabled",\
        color: "green",\
        bold: true,\
        click_event: {action: "run_command", command: "function fdoors:global_config/disable_extended_menu"},\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    },\
    {\
        text: "]",\
        color: "gold",\
        hover_event: {\
            action: "show_text",\
            value: {\
                translate: "fdoors.menu.global_config.enable_extended_menu.help",\
                fallback: "Switch to an alternative door configuration menu for this player only.  The alternative menu is both more powerful and less jank than the default.  However, this menu breaks without operator status, so it is disabled by default."\
            }\
        }\
    }\
]

