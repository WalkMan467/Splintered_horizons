
execute \
    if entity @n[sort=arbitrary,distance=..1.5,tag=sys.detect.player_death.point,type=marker] run \
return 0

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
summon minecraft:marker ~ ~ ~ {Tags:["sys.detect.player_death.point"]}

execute \
    as @n[sort=arbitrary,distance=..1.5,tag=sys.detect.player_death.point,type=marker] at @s run \
setblock ~ ~ ~ air

execute \
    as @n[sort=arbitrary,distance=..1.5,tag=sys.detect.player_death.point,type=marker] at @s run \
setblock ~ ~1 ~ air