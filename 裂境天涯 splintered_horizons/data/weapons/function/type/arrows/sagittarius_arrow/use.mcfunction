advancement revoke @a only weapons:arrows/sagittarius_arrow

scoreboard players reset #weapon.sagittarius_arrow.range global.main
function weapons:type/arrows/sagittarius_arrow/range

playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 0.5 2
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.creaking.death voice @a ~ ~1 ~ 1 0.75

particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 200 force @a
particle minecraft:ominous_spawning ~ ~1 ~ 1 1 1 1 200

execute \
    as @e[distance=..8,type=!player,type=!#minecraft:dummy_mob] run \
damage @s 8 magic

execute \
    as @e[distance=..6,sort=arbitrary,type=!#minecraft:dummy_mob,type=!player] run \
function sys:dummy_mob/interface

scoreboard players set @e[distance=..6,sort=arbitrary,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] sys.skills_freeze 100

tag @e[distance=..6,sort=arbitrary,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface

function particle:sagittarius_wave/use

execute \
    on origin \
    if entity @s[type=player] run \
scoreboard players set @s weapon.sagittarius.cd 200

execute \
    on origin \
    if entity @s[type=player] run \
scoreboard players set @s weapon.effect.starry_sky_frost 200