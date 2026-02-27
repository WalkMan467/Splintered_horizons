execute \
    rotated ~45 -15 \
    anchored eyes run \
function weapons:type/scythe/flame_of_finality/lc/2/blade_particle

execute \
    store result score #rdm global.main run \
random value 1..4

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 5

execute \
    if score #rdm global.main matches 1 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 1

execute \
    if score #rdm global.main matches 2 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 1.5

execute \
    if score #rdm global.main matches 3 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 1.75

execute \
    if score #rdm global.main matches 4 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 2

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 0.5 1
playsound minecraft:entity.blaze.shoot voice @a ~ ~1 ~ 0.75 0.75

execute \
    as @e[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] run \
tag @s add weapon.flame_of_finality.dmg

execute \
    anchored feet \
    positioned ^ ^ ^2 \
    rotated ~ 0 \
    as @e[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] run \
tag @s add weapon.flame_of_finality.dmg

execute \
    as @e[distance=..5,tag=weapon.flame_of_finality.dmg,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/scythe/flame_of_finality/lc/1/damage

tag @e[distance=..5,tag=weapon.flame_of_finality.dmg,type=!#minecraft:dummy_mob,type=!player] remove weapon.flame_of_finality.dmg