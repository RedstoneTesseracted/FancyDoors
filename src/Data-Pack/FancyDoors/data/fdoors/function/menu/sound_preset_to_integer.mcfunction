# Converts a sound string stored in fdoors:utility temp.sound to an integer

execute if data storage fdoors:utility temp{sound: "minecraft:entity.iron_golem.step"} run return 0
execute if data storage fdoors:utility temp{sound: "minecraft:entity.iron_golem.attack"} run return 1
execute if data storage fdoors:utility temp{sound: "minecraft:block.chest.close"} run return 2
execute if data storage fdoors:utility temp{sound: "minecraft:block.chest.open"} run return 3
execute if data storage fdoors:utility temp{sound: "minecraft:block.wooden_door.close"} run return 4
execute if data storage fdoors:utility temp{sound: "minecraft:block.wooden_door.open"} run return 5
execute if data storage fdoors:utility temp{sound: "minecraft:block.iron_door.close"} run return 6
execute if data storage fdoors:utility temp{sound: "minecraft:block.iron_door.open"} run return 7
execute if data storage fdoors:utility temp{sound: "minecraft:block.piston.contract"} run return 8
execute if data storage fdoors:utility temp{sound: "minecraft:block.piston.extend"} run return 9
execute if data storage fdoors:utility temp{sound: "minecraft:block.fence_gate.close"} run return 10
execute if data storage fdoors:utility temp{sound: "minecraft:block.fence_gate.open"} run return 11
execute if data storage fdoors:utility temp{sound: "minecraft:block.vault.close_shutter"} run return 12
execute if data storage fdoors:utility temp{sound: "minecraft:block.vault.open_shutter"} run return 13
execute if data storage fdoors:utility temp{sound: "minecraft:entity.enderman.teleport"} run return 14
execute if data storage fdoors:utility temp{sound: "minecraft:block.fire.extinguish"} run return 1
return 0
