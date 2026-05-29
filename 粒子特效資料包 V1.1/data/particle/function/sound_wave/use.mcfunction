# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 3 1


execute \
    unless score #particle.sound_wave.color particle matches 1.. run \
particle flash{color:[0.051,1.000,0.431,0.25]} ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

execute \
    if score #particle.sound_wave.color particle matches 1 run \
particle flash{color:[1.000,0.000,0.831,0.25]} ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

execute \
    if score #particle.sound_wave.color particle matches 2.. run \
particle flash{color:[1.000,0.071,0.071,0.25]} ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1


particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 10 normal @a
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 90 normal @a[scores={main.light_sensitivity=0}]


particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 10 normal @a
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 90 normal @a[scores={main.light_sensitivity=0}] 

summon marker ~ ~ ~ {Tags:["fx.sound_wave.main","fx.sound_wave","summon"]}

execute \
    as @n[sort=arbitrary,distance=..1,tag=summon,tag=fx.sound_wave.main,type=marker] at @s \
    rotated ~ 0 run \
function particle:sound_wave/ground_ash/summon

# 音波場域
schedule function particle:sound_wave/main 1t