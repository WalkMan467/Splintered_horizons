
# get origin item
summon item ~ ~1.8 ~ {Tags:[wma,wma.quit_item,"1",wma.need_some_help],Item:{id:"stone"},Age:-32767s,Glowing:1b}
data modify entity @e[type=item,tag=wma.quit_item,tag=1,limit=1] Item set from entity @s Armoritem[0]
summon item ~ ~1.5 ~ {Tags:[wma,wma.quit_item,"2",wma.need_some_help],Item:{id:"stone"},Age:-32767s,Glowing:1b}
data modify entity @e[type=item,tag=wma.quit_item,tag=2,limit=1] Item set from entity @s Armoritem[1]
summon item ~ ~1.2 ~ {Tags:[wma,wma.quit_item,"3",wma.need_some_help],Item:{id:"stone"},Age:-32767s,Glowing:1b}
data modify entity @e[type=item,tag=wma.quit_item,tag=3,limit=1] Item set from entity @s Armoritem[2]
summon item ~ ~0.9 ~ {Tags:[wma,wma.quit_item,"4",wma.need_some_help],Item:{id:"stone"},Age:-32767s,Glowing:1b}
data modify entity @e[type=item,tag=wma.quit_item,tag=4,limit=1] Item set from entity @s Armoritem[3]
kill @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:1}}}}]

execute as @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:{no_mosquito_breaking:1}}}}}] run data remove entity @s Item.components."minecraft:unbreakable"
execute as @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:{no_mosquito_breaking:1}}}}}] run data remove entity @s Item.components."minecraft:custom_data".wma

# rewear old helmet
data merge entity @s {Armoritem:[{},{},{},{components:{"minecraft:attribute_modifiers":{modifiers:[{amount:0d,id:"wma.zero_item.3",slot:"head",type:"minecraft:armor",operation:"add_value"}]},"minecraft:unbreakable":{},"minecraft:custom_data":{wma:1}},id:"minecraft:leather_helmet"}]}

# particle
title @a[distance=..7] actionbar [{"text": "<訓練人偶> 那個.. 主人，我沒有衣服會很害羞的o.o"}]
execute as @e[type=item,tag=wma.quit_item,limit=4] at @s facing entity @p eyes rotated ~ -30 run function wma:dummy/exchange_armor/2 {strength:3}
particle minecraft:poof ~ ~1.5 ~ 0 0 0 0.1 3 force
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0

tag @e[tag=wma.quit_item,limit=4] remove wma.quit_item