function bossfight:chapter_2/segrina/skills/3/range/rotate

function bossfight:chapter_2/segrina/skills/interface/in

# 靈魂球加速
execute \
    if entity @p[sort=nearest,distance=..2,tag=!eliminate,tag=monster.segrina.bossfight.interface] \
    positioned ~ ~14 ~ \
    as @n[distance=..14,tag=bossfight.segrina.skills.3.soul,type=minecraft:block_display] at @s run \
tp @s ~ ~-0.25 ~ 0 90

function bossfight:chapter_2/segrina/skills/interface/out