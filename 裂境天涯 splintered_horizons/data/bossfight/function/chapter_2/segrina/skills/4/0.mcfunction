execute \
    positioned 762 107 642 run \
title @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] title {"translate":"monsters.segrina.4","fallback": "技能4【靈魂之鎖】"}

execute \
    positioned 762 107 642 run \
title @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] times 20 20 20

execute \
    positioned 762 107 642 run \
title @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] subtitle ""

execute \
    positioned 762 107 642 \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] at @s run \
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1

execute \
    positioned 762 107 642 \
    as @a[sort=arbitrary,distance=..60,tag=monster.segrina.bossfight.interface] at @s run \
function bossfight:chapter_2/segrina/skills/4/death_tips