# Root function run BY and AT all base door entities

# Create interaction if a player holding a tool is nearby
execute if entity @a[distance=..8] if entity @s[tag=!fdoors.door.configure_ready] run function fdoors:door/await_configure
execute unless entity @a[distance=..8] if entity @s[tag=fdoors.door.configure_ready] run function fdoors:door/stop_await_configure

# Show particles on the interaction entity
execute on passengers if entity @s[tag=fdoors.door.configure_interaction] run particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:1.0f} ~ ~ ~ 1.0 1.0 1.0 0.0 10

