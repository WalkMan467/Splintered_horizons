execute if predicate armor:type/water/2 if items entity @s[tag=!armor.water.water_shelter.use] armor.head *[custom_data~{water:1b}] run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 normal @a
execute if predicate armor:type/water/2 if items entity @s[tag=!armor.water.water_shelter.use] armor.head *[custom_data~{water:1b}] run playsound minecraft:block.respawn_anchor.charge voice @s ~ ~1 ~ 1 0.75
execute if predicate armor:type/water/2 if items entity @s[tag=!armor.water.water_shelter.use] armor.head *[custom_data~{water:1b}] run tag @s add armor.water.water_shelter.use

advancement revoke @s only armor:type/water/1/use