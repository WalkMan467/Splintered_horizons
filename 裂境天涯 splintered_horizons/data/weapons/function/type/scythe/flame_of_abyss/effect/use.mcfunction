
execute on attacker run \
scoreboard players add @s weapon.flame_of_abyss.effect.cd 0

execute on attacker \
    if score @s weapon.flame_of_abyss.effect.cd matches 1.. run \
return 0

scoreboard players add @e[distance=..4,type=!player,type=!#minecraft:dummy_mob] weapon.flame_of_abyss.effect 2

execute \
    as @e[distance=..4,type=!player,type=!#minecraft:dummy_mob] at @s run \
particle dust_color_transition{from_color:[0.416,0.000,0.780],scale:2,to_color:[1.000,0.000,1.000]} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal

execute on attacker run \
scoreboard players set @s weapon.flame_of_abyss.effect.cd 1

scoreboard players reset #weapon.flame_of_abyss.fx particle
function weapons:type/scythe/flame_of_abyss/effect/fx

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1