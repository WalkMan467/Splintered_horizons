execute if score @s entity.dummy_mob matches 1.. run return 0
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return 0

execute store result score @s player.max_health run attribute @s max_health get
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect = @s player.max_health
scoreboard players set #math global.main 2
scoreboard players operation @s monster.abyss_soulcutter.damage.health.detect /= #math global.main

execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run damage @s 9999 monsters:chapter_1/abyssal_soulreaper/effect/dot by @n[type=zombie,tag=monsters.abyssal_soulreaper]
execute if score @s player.health <= @s monster.abyss_soulcutter.damage.health.detect run return 0

damage @s 6 mob_attack by @n[type=zombie,tag=monsters.abyssal_soulreaper]

title @s title ""
title @s subtitle [{"text":"[","color": "dark_red"},{"translate":"player.effect.bleeding","color": "dark_red"},{"text":"]","color": "dark_red"}]
title @s times 20 20 20
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 2

function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:2, max:10}