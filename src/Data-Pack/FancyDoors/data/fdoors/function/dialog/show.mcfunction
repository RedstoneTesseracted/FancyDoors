# This function displays the dynamically-built dialog

# Call function macro that substitutes in the definition.
# If the macro failed, show an error.
scoreboard players set fdoors.macro_result fdoors.local 0
execute store result score fdoors.macro_result fdoors.local run function fdoors:dialog/__show with storage fdoors:menu menu
execute if score fdoors.macro_result fdoors.local matches 0 run tellraw @p {translate: "fdoors.messages.macro_fail", fallback: "Function macro %s failed to run.", color: "red", with: [{text: "fdoors:dialog/__show", color: "gold", underlined: true}]}

return run scoreboard players get fdoors.macro_result fdoors.local
