$execute if entity @a[distance=$(min)..$(max),predicate=!fdoors:holding_selector_crossbow,nbt={SelectedItem:$(item)}] run return 1
return 0