execute as @a[scores={item.tp_book.casting=0..}] if predicate players:detect/movement run function item:type/tp_book/rc/cancel

execute as @n[type=item] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:item","nbt": "{Item:{components:{\"minecraft:custom_data\":{id:\"tp_book\"}}}}"}} run data modify entity @s PickupDelay set value 0

execute as @a[scores={item.tp_book.casting=0}] at @s if score @s item.tp_book.point.area matches 2 run function item:type/tp_book/rc/safe_zone/in
execute as @a[scores={item.tp_book.casting=0}] at @s if score @s item.tp_book.point.area matches 1 run function item:type/tp_book/rc/safe_zone/out

execute as @a unless score @s item.tp_book.casting matches ..0 run schedule function item:type/tp_book/rc/loop 1t