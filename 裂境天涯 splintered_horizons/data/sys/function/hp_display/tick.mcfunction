# If strict, only apply to tagged entities


execute \
    as @a at @s \
    if score .strict hp_display matches 0 \
    as @e[distance=0..,type=!player,type=!#minecraft:dummy_mob,nbt={HurtTime:9s}] at @s run \
function sys:hp_display/update

execute \
    as @a at @s \
    if score .strict hp_display matches 1 \
    as @e[distance=0..,type=!player,type=!#minecraft:dummy_mob,tag=hp_display,nbt={HurtTime:9s}] at @s run \
function sys:hp_display/update