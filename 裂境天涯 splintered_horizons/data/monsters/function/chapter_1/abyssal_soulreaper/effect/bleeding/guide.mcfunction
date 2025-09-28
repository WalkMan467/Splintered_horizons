scoreboard players remove @s monster.abyss_soulcutter.effect 1
scoreboard players remove @s monster.abyss_soulcutter.effect.delay 1

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a

execute if score @s monster.abyss_soulcutter.effect.delay matches 1.. unless score @s monster.abyss_soulcutter.effect matches 1.. run scoreboard players set @s monster.abyss_soulcutter.effect.delay 0

execute if score @s monster.abyss_soulcutter.effect.delay matches 1.. run return 0

scoreboard players set @s monster.abyss_soulcutter.effect.delay 40
damage @s 5 monsters:chapter_1/abyssal_soulreaper/effect/dot

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle dust{color:[1.000,0.098,0.161],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 5 normal @a