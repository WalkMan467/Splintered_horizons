summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.3.point.2"]}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.3.point","summon"]}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.3.point","summon"]}

execute \
    as @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.3.point,type=area_effect_cloud] at @s \
    if entity @p[distance=..3,sort=arbitrary] run \
function monsters:chapter_2/segrina/3/8

execute \
    as @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.3.point,type=area_effect_cloud] at @s \
    positioned ~ 107 ~ run \
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:80,Tags:["monster.segrina.skill.3"]}

function monsters:chapter_2/segrina/3/5

kill @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.3.point,type=area_effect_cloud]