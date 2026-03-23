# ===================================================
# Windriders Legplates Main Function
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/run ] >>> [Gale Slash] Knockback Tp
    ## Guide [ function armors:type/windriders_legplates/use ] >>> Killing an entity triggers Function
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> Take Off
    ## Guide [ function armors:type/windriders_legplates/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/windriders_legplates/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/windriders_legplates/effect/use ] >>> Summon [Gale Slash] Point
    ## Guide [ function armors:type/windriders_legplates/effect/run ] >>> [Gale Slash] Run Function
    ## Guide [ function armors:type/windriders_legplates/effect/range ] >>> Range Fx (Target)
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/main ] >>> [Gale Slash] Knockback Loop Function
    ## Guide [ function armors:type/windriders_legplates/effect/detect ] >>> Attacker and Target Detect
    ## Guide [ function armors:type/windriders_legplates/effect/damage ] >>> [Gale Slash] Dot Dmg
# ===================================================
# Damage and Effects

function sys:dummy_mob/interface

execute \
    if block ^ ^ ^-0.5 #penetrate run \
tp @s[tag=!sys.dummy_mob.interface] ^ ^ ^-0.5

execute \
    unless score @s armor.windriders_legplates.leggings.damage_delay matches 1.. run \
scoreboard players set @s armor.windriders_legplates.leggings.damage_delay 3

tag @s remove sys.dummy_mob.interface