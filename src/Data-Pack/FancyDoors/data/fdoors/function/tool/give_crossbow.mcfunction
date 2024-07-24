# Gives the executing player the block selector crossbow tool

give @s minecraft:crossbow[\
item_name='{"text":"Block Selector"}',\
lore=['{"translate":"fdoors.block_tool.usage1","fallback":" Shoot at blocks to add them to the door entity","color":"green","italic":false}',\
      '{"translate":"fdoors.block_tool.usage2","fallback":" Punch door entity to begin adding blocks","color":"green","italic":false}',\
      '{"translate":"fdoors.block_tool.usage3","fallback":" Stop holding to finish adding blocks","color":"green","italic":false}'],\
rarity="epic",\
custom_data={fdoors:{tool:1b}},\
charged_projectiles=[{id:"minecraft:arrow",count:1b,components:{"minecraft:item_name":'{"text":"Block Selector Arrow","color":"red"}',"minecraft:custom_data":{fdoors:{selector_arrow:1b}}}}]]

