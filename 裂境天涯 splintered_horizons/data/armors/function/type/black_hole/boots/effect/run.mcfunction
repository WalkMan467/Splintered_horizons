# ===================================================
# run

    ## Guide [ function armors:type/black_hole/boots/effect/run ] >>> run
    ## Guide [ function sys:dummy_mob/interface ] >>> interface
    ## Guide [ function armors:type/black_hole/boots/effect/main ] >>> effect main

# ===================================================

# Damage and Effects

tp @s ^ ^ ^0.25

function sys:dummy_mob/interface

execute \
    if score @s armor.black_hole.boots.damage_delay matches 0 run \
damage @s[type=!player,type=!#minecraft:dummy_mob] 2 armors:type/black_hole/damage by @p


execute \
    unless score @s armor.black_hole.boots.damage_delay matches 1.. run \
scoreboard players set @s armor.black_hole.boots.damage_delay 3


effect give @s[tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob] weakness 1 255 false

tag @s remove sys.dummy_mob.interface