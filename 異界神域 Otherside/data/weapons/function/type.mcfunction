scoreboard players reset @s drop
$execute if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:"$(id)"}},count:1}}] run function weapons:type/$(id)/use
$kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{id:"$(id)"}},count:1}}]