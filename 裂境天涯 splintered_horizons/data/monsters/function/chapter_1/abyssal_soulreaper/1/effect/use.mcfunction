execute if entity @s[gamemode=!survival,gamemode=!adventure] run return 0
execute store result score @s player.max_health run attribute @s max_health get
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect = @s player.max_health
scoreboard players set #math global.main 2
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect /= #math global.main

execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run damage @s 9999 monsters:chapter_1/abyssal_soulreaper/effect/dot by @n[type=zombie,tag=monsters.abyssal_soulreaper]
execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run return 0

damage @s 6 mob_attack by @n[type=zombie,tag=monsters.abyssal_soulreaper]

execute unless predicate monsters:chapter_1/abyssal_soulreaper/50 run return 0

scoreboard players set @s monster.abyss_soulcutter.effect 6
scoreboard players set @s monster.abyss_soulcutter.effect.delay 2

title @s times 20 20 20
title @s title ""
title @s subtitle [{"text":"[","color":"red"},{"translate":"player.effect.blooding","fallback":"Blooding","color":"red"},{"text":"]","color":"red"}]

playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 1.75