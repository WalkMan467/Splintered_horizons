tp @s ~ ~ ~ ~1 0

execute if entity @n[type=item,distance=..5,nbt={Item:{components: {"minecraft:custom_data": {monument:1b}}}}] at @n[tag=system.monument_point.point] positioned ^ ^ ^4 run function system:monument_point/water/spawn
execute if entity @n[type=item,distance=..5,nbt={Item:{components: {"minecraft:custom_data": {monument:2b}}}}] at @n[tag=system.monument_point.point] positioned ^ ^ ^4 run function system:monument_point/grass/spawn

tp @n[type=#dummy_mob,tag=system.monument_point.water] ^ ^ ^3 facing entity @s feet
tp @n[type=#dummy_mob,tag=system.monument_point.grass] ^ ^ ^-3 facing entity @s feet
tp @n[type=#dummy_mob,tag=system.monument_point.fire] ^3 ^ ^ facing entity @s feet

rotate @n[type=#dummy_mob,tag=system.monument_point.main,tag=!system.monument_point.point] ~ 0