tp @s ^ ^ ^1

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a

execute as @n[type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!marker,type=!area_effect_cloud,type=!armor_stand,distance=..1.5] run function weapons:type/broken_glass/effect

execute unless block ~ ~ ~ air run particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute unless block ~ ~ ~ air run playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1
execute unless block ~ ~ ~ air run kill @s