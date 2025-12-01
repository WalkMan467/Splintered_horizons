execute as @a at @s unless entity @n[distance=..5,type=item,nbt={Item:{components:{"minecraft:custom_data":{shooting_contest:1b}}}}] run return 0

execute as @a at @s run data modify entity @n[distance=..5,type=item,nbt={Item:{components:{"minecraft:custom_data":{shooting_contest:1b}}}}] PickupDelay set value 0