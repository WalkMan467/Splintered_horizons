# ===================================================
# Windriders Legplates Main Function
    ## Guide [ function armors:type/windriders_legplates/effect/use ] >>> Summon [Gale Slash] Point
    ## Guide [ function armors:type/windriders_legplates/use ] >>> Killing an entity triggers Function
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> Take Off
    ## Guide [ function armors:type/windriders_legplates/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/windriders_legplates/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/windriders_legplates/effect/run ] >>> [Gale Slash] Run Function
    ## Guide [ function armors:type/windriders_legplates/effect/range ] >>> Range Fx (Target)
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/run ] >>> [Gale Slash] Knockback Tp
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/main ] >>> [Gale Slash] Knockback Loop Function
    ## Guide [ function armors:type/windriders_legplates/effect/detect ] >>> Attacker and Target Detect
    ## Guide [ function armors:type/windriders_legplates/effect/damage ] >>> [Gale Slash] Dot Dmg
# ===================================================

execute \
    if entity @s[type=player,tag=!armors.windriders_legplates.effect] run \
return 0

execute \
    if score @s armor.windriders_legplates.cd matches 1.. run \
return 0

summon area_effect_cloud ~ ~1 ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:5,Tags:["armor.windriders_legplates.effect"]}

tag @s add armors.windriders_legplates.user

execute \
    as @e[sort=nearest,limit=10,type=!#minecraft:dummy_mob,type=!player,distance=..50] at @s \
    if function armors:type/windriders_legplates/effect/detect run \
function armors:type/windriders_legplates/effect/run

scoreboard players set @s armor.leggings.effect.actived 10

tag @s remove armors.windriders_legplates.effect
tag @s remove armors.windriders_legplates.user