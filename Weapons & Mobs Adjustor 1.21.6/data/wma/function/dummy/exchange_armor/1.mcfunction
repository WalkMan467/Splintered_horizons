
# get origin item
summon item ~ ~1.5 ~ {Tags:[wma,wma.quit_item,wma.need_some_help],Item:{id:"stone"},Age:-32767s,Glowing:1b}
$data modify entity @e[type=item,tag=wma.quit_item,limit=1] Item set from entity @s Armoritem[$(slot)]
kill @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:1}}}},limit=1]
execute as @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:{no_mosquito_breaking:1}}}}},limit=1] run data remove entity @s Item.components."minecraft:unbreakable"
execute as @e[type=item,tag=wma.quit_item,nbt={Item:{components:{"minecraft:custom_data":{wma:{no_mosquito_breaking:1}}}}},limit=1] run data remove entity @s Item.components."minecraft:custom_data".wma

# equip new item
execute as @e[type=item,tag=,sort=nearest,limit=1] unless data entity @s {Item:{components:{"minecraft:unbreakable":{}}}} run function wma:dummy/exchange_armor/3
$data modify entity @s Armoritem[$(slot)] set from entity @e[type=item,tag=,sort=nearest,limit=1] Item
kill @e[type=item,tag=,sort=nearest,limit=1]

# particle
execute as @e[type=item,tag=wma.quit_item,limit=1] at @s facing entity @p eyes rotated ~ -30 run function wma:dummy/exchange_armor/2 {strength:3}
particle minecraft:poof ~ ~1.5 ~ 0 0 0 0.1 3 force
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0

tag @e[type=item,tag=wma.quit_item,limit=1] remove wma.quit_item