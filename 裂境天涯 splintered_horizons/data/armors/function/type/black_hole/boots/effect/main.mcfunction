# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/effect/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/effect/run ] >>> Damage and Effects
    ## Guide [ function armors:type/black_hole/effect/use ] >>> Summon Black Hole Boots Range Effect

# ===================================================
# @s = Enemy Entity

scoreboard players remove @s[scores={armor.black_hole.boots.damage_delay=1..}] armor.black_hole.boots.damage_delay 1

execute \
    if entity @s[type=!player,type=!#minecraft:dummy_mob] at @s facing entity @n[tag=armor.black_hole.effect,distance=1..8,type=area_effect_cloud] feet rotated ~ 0 run \
function armors:type/black_hole/boots/effect/run