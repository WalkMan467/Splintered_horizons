summon area_effect_cloud ~ ~ ~ {Duration:1,custom_particle:{type:"block",block_state:"minecraft:air"},NoGravity:1b,Radius:0f,Tags:["monsters.elekiel.2.vampire_flower.point"]}

spreadplayers 912 2018 5 10 under 60 false @e[distance=0..,tag=monsters.elekiel.2.vampire_flower.point,type=area_effect_cloud]


execute \
    as @e[distance=0..,tag=monsters.elekiel.2.vampire_flower.point,type=area_effect_cloud] at @s run \
tp @s ~ 60 ~


execute \
    as @e[distance=0..,tag=monsters.elekiel.2.vampire_flower.point,type=area_effect_cloud] at @s run \
function bossfight:chapter_2/elekiel/skills/2/1

execute \
    positioned 912 55 2018 \
    as @a[sort=arbitrary,distance=..60] at @s run \
function bossfight:chapter_2/elekiel/skills/2/death_tips