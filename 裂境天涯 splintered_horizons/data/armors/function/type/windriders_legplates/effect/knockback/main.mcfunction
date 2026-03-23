# ===================================================
# Windriders Legplates Main Function
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/main ] >>> [Gale Slash] Knockback Loop Function
    ## Guide [ function armors:type/windriders_legplates/use ] >>> Killing an entity triggers Function
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> Take Off
    ## Guide [ function armors:type/windriders_legplates/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/windriders_legplates/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/windriders_legplates/effect/use ] >>> Summon [Gale Slash] Point
    ## Guide [ function armors:type/windriders_legplates/effect/run ] >>> [Gale Slash] Run Function
    ## Guide [ function armors:type/windriders_legplates/effect/range ] >>> Range Fx (Target)
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/run ] >>> [Gale Slash] Knockback Tp
    ## Guide [ function armors:type/windriders_legplates/effect/detect ] >>> Attacker and Target Detect
    ## Guide [ function armors:type/windriders_legplates/effect/damage ] >>> [Gale Slash] Dot Dmg
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