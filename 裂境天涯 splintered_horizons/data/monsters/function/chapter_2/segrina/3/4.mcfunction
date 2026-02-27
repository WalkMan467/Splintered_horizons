execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] at @s run \ 
tag @s add monster.segrina.skill.3.player

execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73] at @s run \ 
playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 1 1

execute \
    as @e[sort=arbitrary,limit=2,distance=..60,tag=monster.segrina.skill.3,type=area_effect_cloud] at @s run \
tag @a[sort=arbitrary,distance=..3] add monster.segrina.skill.3.temp

execute \
    as @e[sort=arbitrary,limit=2,distance=..60,tag=monster.segrina.skill.3,type=area_effect_cloud] at @s run \
tag @a[sort=arbitrary,distance=..3] remove monster.segrina.skill.3.player

tag @a[sort=arbitrary,distance=..60,tag=monster.segrina.skill.3.player] add forced_interrupt_animation

execute \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.skill.3.player] at @s run \
function players:stop_animation

execute \
    as @a[sort=arbitrary,tag=monster.segrina.skill.3.player,distance=..60] at @s run \
function monsters:chapter_2/segrina/3/7

tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.player

kill @e[sort=arbitrary,distance=..60,limit=2,tag=monster.segrina.skill.3,type=area_effect_cloud]