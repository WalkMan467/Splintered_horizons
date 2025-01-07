scoreboard players set #global player.ultimate 120
scoreboard players set @s weapon.storm_sword.ultimate 160

title @s title [{"text":"\uE000","font": "minecraft:icon"},{"translate": "weapon.storm_sword.ultimate","color": "dark_red","font":"minecraft:default"},{"text":"\uE000","font": "minecraft:icon"}]
title @s times 10 20 10

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 5 0.75
playsound minecraft:entity.wither.ambient voice @a ~ ~1 ~ 5 1