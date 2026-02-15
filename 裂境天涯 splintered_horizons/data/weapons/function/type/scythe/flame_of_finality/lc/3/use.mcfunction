scoreboard players set @s weapon.flame_of_finality.flower.id 1

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 5

tag @s add temp

scoreboard players set #weapon.flame_of_finality.raycast main.raycast 35

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.flame_of_finality.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] ~ ~ ~ ~ ~

execute \
    as @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] run \
function weapons:type/scythe/flame_of_finality/lc/3/detect
kill @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud]

tag @s remove temp