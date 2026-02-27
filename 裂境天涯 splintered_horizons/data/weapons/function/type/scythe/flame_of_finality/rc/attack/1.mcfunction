scoreboard players set @s player.click.interval 10
scoreboard players reset @s weapon.flame_of_finality.attack

say 1

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