# First-time player setup function
execute if score fdoors.enable_welcome_message fdoors.config matches 1 run tellraw @s \
[\
    {\
        text: "[",\
        color: "aqua"\
    },\
    {\
        text: "𝓕𝓪𝓷𝓬𝔂 𝓓𝓸𝓸𝓻𝓼",\
        color: "green"\
    },\
    {\
        text: "] ",\
        color: "aqua"\
    },\
    {\
        translate: "fdoors.messages.welcome",\
        color: gold,\
        fallback: "Welcome to Redstone⁴'s 𝓕𝓪𝓷𝓬𝔂 𝓓𝓸𝓸𝓻𝓼!  To get started, craft a %1$s and a %2$s.  For additional configuration options, run %3$s",\
        with: [\
            {translate: "fdoors.item.block_tool", color: "light_purple", fallback: "Block Selector"},\
            {translate: "fdoors.item.door_controller", color: "light_purple", fallback: "Door Controller"},\
            {text: "/function fdoors:configure", color: "green", underlined: true, click_event: {action: "suggest_command", command: "/function fdoors:configure"}}\
        ]\
    }\
]

# Set default scores
execute unless score @s fdoors.extended_menu matches -2147483648..2147483647 run scoreboard players set @s fdoors.extended_menu 0

# Grant recipes
recipe give @s fdoors_survival:block_selector
recipe give @s fdoors_survival:door_controller
