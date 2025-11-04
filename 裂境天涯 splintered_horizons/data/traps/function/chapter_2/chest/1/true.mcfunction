execute if score #traps.chapter_2.chest traps.global.main matches 0 run return 0

scoreboard players set #traps.chapter_2.chest traps.global.main 0

setblock 1103 209 166 minecraft:campfire[lit=true]
setblock 1118 210 158 minecraft:campfire[lit=true]
setblock 1120 208 143 minecraft:campfire[lit=true]
setblock 1089 209 143 minecraft:campfire[lit=true]
setblock 1086 208 152 minecraft:campfire[lit=true]

execute if biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift_trap positioned 1101 206 148 as @a[distance=..60] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{can_see_sky:0b}}} at @s run playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 1
execute positioned 1102 206 148 rotated ~ 0 run function monsters:summon/chapter_3/lord_of_the_cataclysm