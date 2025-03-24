execute as @a[scores={item.tp_book.casting=0..}] if predicate players:detect/movement run function items:type/tp_book/rc/cancel

execute as @n[type=item] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:item","nbt": "{Item:{components:{\"minecraft:custom_data\":{id:\"tp_book\"}}}}"}} run data modify entity @s PickupDelay set value 0

execute as @a[scores={item.tp_book.casting=0}] at @s unless dimension world_area:main/safe_zone run function items:type/tp_book/rc/safe_zone/in
execute as @a[scores={item.tp_book.casting=0}] at @s if dimension world_area:main/safe_zone run function items:type/tp_book/rc/safe_zone/out

execute as @a unless score @s item.tp_book.casting matches ..0 run schedule function items:type/tp_book/rc/loop 1t