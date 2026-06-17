particle minecraft:soul ~ ~ ~ 0.25 0.25 0.25 0 1 force @a
particle dust_color_transition{from_color:[0.020,0.388,0.255],to_color:[0.859,1.000,0.976],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 0 5 normal

function bossfight:chapter_2/segrina/skills/interface/in

execute \
    if entity @n[distance=..1,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud] \
    as @p[sort=arbitrary,distance=..2,tag=!eliminate,tag=monster.segrina.bossfight.interface] at @s run \
function bossfight:chapter_2/segrina/skills/3/4

execute \
    if entity @n[distance=..1,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud] \
    if entity @p[sort=arbitrary,distance=..2,tag=!eliminate,tag=monster.segrina.bossfight.interface] run \
kill @s

execute \
    if entity @n[distance=..1,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud] \
    unless entity @p[sort=arbitrary,distance=..2,tag=!eliminate,tag=monster.segrina.bossfight.interface] run \
function bossfight:chapter_2/segrina/skills/3/5

function bossfight:chapter_2/segrina/skills/interface/out

tp @s ~ ~-0.05 ~ 0 90