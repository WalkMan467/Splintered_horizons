execute at @n[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.3.point.2,type=area_effect_cloud] run \
spreadplayers ~ ~ 4 12 under 107 false @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.3.point,type=area_effect_cloud]

execute \
    as @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.3.point,type=area_effect_cloud] at @s \
    if entity @p[sort=arbitrary,distance=..3.5] run return run \
function monsters:chapter_2/segrina/3/8

kill @n[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.3.point.2,type=area_effect_cloud]