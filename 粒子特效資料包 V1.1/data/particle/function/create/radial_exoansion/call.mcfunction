# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 3 1


particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1


particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 10 normal @a
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 90 normal @a[scores={main.light_sensitivity=0}]


particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 10 normal @a
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 90 normal @a[scores={main.light_sensitivity=0}] 

summon marker ~ ~ ~ {Tags:["particle.radial_exoansion.main","particle.radial_exoansion","summon"]}

execute \
    as @n[sort=arbitrary,distance=..1,tag=summon,tag=particle.radial_exoansion.main,type=marker] at @s \
    rotated ~ 0 run \
function particle:create/radial_exoansion/summon with storage particle data.create[0]

# 音波場域
schedule function particle:create/radial_exoansion/main 1t