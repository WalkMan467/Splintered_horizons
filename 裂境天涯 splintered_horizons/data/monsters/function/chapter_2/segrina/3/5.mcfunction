execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73] at @s run \ 
playsound minecraft:block.note_block.hat voice @s ~ ~ ~ 1 0.5

execute \
    as @e[sort=arbitrary,limit=2,distance=..60,tag=monster.segrina.skill.3,type=area_effect_cloud] at @s \
    as @a[sort=arbitrary,distance=..3,tag=monster.segrina.skill.3.temp] run \
function monsters:chapter_2/segrina/3/6