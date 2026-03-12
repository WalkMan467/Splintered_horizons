scoreboard players set @s player.click.interval 10
scoreboard players reset @s weapon.flame_of_finality.attack

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
function weapons:type/scythe/flame_of_finality/rc/attack/1/damage