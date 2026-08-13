execute \
    as @a at @s \
    at @n[distance=..3,tag=jump_platform,type=block_display] run \
effect give @a[distance=..0.75] minecraft:jump_boost 1 15 true
execute \
    as @a at @s \
    if entity @n[sort=arbitrary,distance=..0.75,tag=jump_platform,type=block_display] run \
particle minecraft:item_slime ~ ~ ~ 0.25 0 0.25 0 1