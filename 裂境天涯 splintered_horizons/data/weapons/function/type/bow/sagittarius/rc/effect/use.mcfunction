execute on attacker unless entity @s[type=player] run return 0

scoreboard players set @e[distance=..8,sort=arbitrary,type=!#minecraft:dummy_mob,type=!player] monster.skill.freeze 100

function particle:ink_painting_expansion/use
particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1

execute on attacker run scoreboard players set @s weapon.sagittarius.cd 200