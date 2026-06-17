# ===================================================
# main

    ## Guide [ function armors:type/windriders_legplates/effect/knockback/main ] >>> main
    ## Guide [ function armors:type/windriders_legplates/use ] >>> use
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off

# ===================================================

# @s = Enemy Entity

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..50,type=!player,type=!#minecraft:dummy_mob] at @s \
    if score @s armor.windriders_legplates.leggings.damage_delay matches 1.. run \
scoreboard players remove @s armor.windriders_legplates.leggings.damage_delay 1

execute \
    as @a at @s \
    as @e[sort=arbitrary,type=!player,type=!#minecraft:dummy_mob,distance=..50] at @s \
    facing entity @n[tag=armor.windriders_legplates.effect,distance=..8,type=area_effect_cloud] feet rotated ~ 0 run \
function armors:type/windriders_legplates/effect/knockback/run

execute \
    as @a at @s \
    if entity @n[tag=armor.windriders_legplates.effect,distance=..50,type=area_effect_cloud] run \
schedule function armors:type/windriders_legplates/effect/knockback/main 1t