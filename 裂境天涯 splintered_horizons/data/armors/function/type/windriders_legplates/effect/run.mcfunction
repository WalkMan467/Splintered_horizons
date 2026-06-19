# ===================================================

# run



    ## Guide [ function armors:type/windriders_legplates/effect/run ] >>> run

    ## Guide [ function armors:type/windriders_legplates/use ] >>> use

    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off



# ===================================================



execute \
    rotated ~ 0 run \
function armors:type/windriders_legplates/effect/range



playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1.25

playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.5

playsound minecraft:entity.breeze.idle_ground voice @a ~ ~1 ~ 1 0.75

playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 0.5 0.5



particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0 1 normal @a

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20 normal @a

particle falling_dust{block_state:"minecraft:white_wool"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal



schedule function armors:type/windriders_legplates/effect/knockback/main 1t



function sys:dummy_mob/interface



tag @s add dmger

effect give @s[tag=!sys.dummy_mob.interface] wind_charged 20 0 false



execute \
    on attacker run \
function armors:type/windriders_legplates/effect/damage



tag @s remove sys.dummy_mob.interface