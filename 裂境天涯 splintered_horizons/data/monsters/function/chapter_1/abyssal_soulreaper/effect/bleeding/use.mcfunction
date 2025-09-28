scoreboard players set @s monster.abyss_soulcutter.effect 120

scoreboard players set @s monster.abyss_soulcutter.effect.delay 40

title @s times 20 20 20
title @s title ""
title @s subtitle [{"text":"[","color":"red"},{"translate":"player.effect.blooding","fallback":"Blooding","color":"red"},{"text":"]","color":"red"}]

playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 1.75
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle dust{color:[1.000,0.098,0.161],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 5 normal @a