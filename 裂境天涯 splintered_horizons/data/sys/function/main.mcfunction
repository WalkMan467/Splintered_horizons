function sys:shooting_contest/main
function sys:walkman467/main
function sys:item_frame/main

execute \
    as @a at @s run \
function sys:monument_point/objective_item/main

execute \
    as @e[type=!#minecraft:dummy_mob,distance=0..] at @s run \
function sys:dummy_mob/timer

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,type=!#minecraft:dummy_mob] at @s run \
function sys:skills_freeze/timer