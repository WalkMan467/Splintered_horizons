# 鎖 1 血並給無敵
execute \
    positioned 762 107 642 \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface,tag=!eliminate] run \
function monsters:chapter_2/segrina/4/2

# 清除怪物
execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,dx=73,dy=26,dz=73,tag=monster.segrina.skill.4.monster,type=skeleton]

# 設置隨機刷怪點
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}
summon area_effect_cloud 762 107 642 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1,Tags:["monster.segrina.skill.4.point","summon"]}

spreadplayers 762 642 8 25 under 107 false @e[sort=arbitrary,distance=..60,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud]

# 生成怪物
execute \
    as @e[sort=arbitrary,distance=..60,limit=8,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud] at @s \
    positioned ~ 107 ~ run \
function monsters:summon/chapter_2/soul_tree_remnant

# 給怪物附加基本設置
execute \
    positioned 725 107 605 \
    as @e[sort=arbitrary,dx=73,dy=26,dz=73,limit=8,tag=soul_tree_remnant,type=skeleton] at @s run \ 
function monsters:chapter_2/segrina/4/6

# 清除刷怪點
execute \
    positioned 725 107 605 run \
kill @e[sort=arbitrary,distance=..60,limit=8,tag=summon,tag=monster.segrina.skill.4.point,type=area_effect_cloud]