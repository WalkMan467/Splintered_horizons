execute if score @s entity.dummy_mob matches 1.. run return 0
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return 0

damage @s 6 mob_attack by @n[type=zombie,tag=monsters.abyssal_soulreaper]

title @s title ""
title @s subtitle [{"text":"[","color": "dark_red"},{"translate":"player.effect.bleeding","color": "dark_red"},{"text":"]","color": "dark_red"}]
title @s times 20 20 20
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 2

function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

advancement grant @s only players:tips/bleeding