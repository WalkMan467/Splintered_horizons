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

function carto_event:api/create_single_entity_event {event:"custom_statuses/bleeding",duration:40,delay:0,parameters:{tick_rate:38,amount:5,cap:10,owner:"@n[type=zombie,tag=monsters.abyssal_soulreaper]",tick_command:"",proc_command:"function monsters:chapter_1/abyssal_soulreaper/effect/bleeding/proc_command"},merge_behavior:"custom"}