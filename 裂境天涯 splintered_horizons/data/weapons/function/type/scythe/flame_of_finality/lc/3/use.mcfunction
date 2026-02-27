scoreboard players set @s weapon.flame_of_finality.flower.id 1

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 5

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 0.5 1
playsound minecraft:entity.blaze.shoot voice @a ~ ~1 ~ 0.75 0.75


tag @s add temp

scoreboard players set #weapon.flame_of_finality.raycast main.raycast 35

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.flame_of_finality.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] ~ ~ ~ ~ ~

execute \
    as @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] run \
function weapons:type/scythe/flame_of_finality/lc/3/detect
kill @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud]

tag @s remove temp