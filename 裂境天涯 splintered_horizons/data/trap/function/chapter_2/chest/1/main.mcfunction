execute unless score #difficulty global.main matches 1.. run return 0

execute if biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift_trap positioned 1101 206 148 as @a[distance=..20] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{can_see_sky:0b}}} at @s run function trap:chapter_2/chest/1/true

execute positioned 1101 206 148 unless entity @a[distance=..20] run function trap:chapter_2/chest/1/false