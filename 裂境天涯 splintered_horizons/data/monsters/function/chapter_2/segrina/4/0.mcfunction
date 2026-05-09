title @a[sort=arbitrary,distance=..60] title {"translate":"monsters.segrina.4","fallback": "技能4【靈魂之鎖】"}
title @a[sort=arbitrary,distance=..60] times 20 20 20

execute \
    as @a[sort=arbitrary,distance=..60] at @s run \
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1

execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73] at @s run \
function monsters:chapter_2/segrina/4/death_tips