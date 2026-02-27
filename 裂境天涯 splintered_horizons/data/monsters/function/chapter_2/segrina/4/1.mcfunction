tag @a remove monster.segrina.skill.4

execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] add monster.segrina.skill.4

summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}

spreadplayers 762 642 8 25 under 107 false @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud]

execute \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.skill.4] run \
function monsters:chapter_2/segrina/4/4

execute \
    as @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud] at @s \
    positioned ~ 107 ~ run \
function monsters:summon/chapter_2/soul_tree_remnant

execute \
    positioned 725 107 605 \
    as @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=soul_tree_remnant,type=skeleton] at @s run \ 
function monsters:chapter_2/segrina/4/6

kill @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud]