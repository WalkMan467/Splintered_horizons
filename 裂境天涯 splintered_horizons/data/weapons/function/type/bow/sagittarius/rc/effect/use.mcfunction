
execute on attacker \
    unless entity @s[type=player] run \
return 0

scoreboard players set @e[distance=..6,sort=arbitrary,type=!#minecraft:dummy_mob,type=!player] monster.skill.freeze 100

function particle:sagittarius_wave/use


execute on attacker run \
scoreboard players set @s weapon.sagittarius.cd 200