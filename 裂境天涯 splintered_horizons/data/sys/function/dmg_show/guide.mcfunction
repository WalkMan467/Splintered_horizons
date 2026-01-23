## show dmg


execute \
    as @e[sort=arbitrary,type=!#minecraft:dummy_mob,distance=..30] at @s run \
function sys:dmg_show/main

## dmg show text

execute \
    as @e[sort=arbitrary,tag=sys.dmg_show.dummy.show,distance=..30,type=text_display] at @s run \
function sys:dmg_show/main.text