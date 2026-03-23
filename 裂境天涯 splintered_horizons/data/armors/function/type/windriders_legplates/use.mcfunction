
# ===================================================
# Windriders Legplates Main Function
    ## Guide [ function armors:type/windriders_legplates/use ] >>> Killing an entity triggers Function
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> Take Off
    ## Guide [ function armors:type/windriders_legplates/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/windriders_legplates/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/windriders_legplates/effect/use ] >>> Summon [Gale Slash] Point
    ## Guide [ function armors:type/windriders_legplates/effect/run ] >>> [Gale Slash] Run Function
    ## Guide [ function armors:type/windriders_legplates/effect/range ] >>> Range Fx (Target)
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/run ] >>> [Gale Slash] Knockback Tp
    ## Guide [ function armors:type/windriders_legplates/effect/knockback/main ] >>> [Gale Slash] Knockback Loop Function
    ## Guide [ function armors:type/windriders_legplates/effect/detect ] >>> Attacker and Target Detect
    ## Guide [ function armors:type/windriders_legplates/effect/damage ] >>> [Gale Slash] Dot Dmg
# ===================================================

execute \
    unless items entity @s armor.legs *[minecraft:custom_data~{windriders:1b} | custom_data~{windriders:1}] run \
return 0

execute \
    if score @s armor.windriders_legplates.cd matches 1.. run \
return 0

execute \
    if score @s armor.leggings.effect.actived matches 1.. run \
return 0

execute \
    if entity @s[tag=armors.windriders_legplates.effect] run \
return 0

scoreboard players set @s armor.windriders_legplates.cd 1

effect give @s speed 5 0 true

tag @s add armors.windriders_legplates.effect

execute rotated ~ 0 run \
function armors:type/windriders_legplates/range

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.breeze.idle_ground voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 0.5 0.5

particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0 1 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20 normal @a
particle falling_dust{block_state:"minecraft:white_wool"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal

scoreboard players set @s armor.leggings.effect.actived 10