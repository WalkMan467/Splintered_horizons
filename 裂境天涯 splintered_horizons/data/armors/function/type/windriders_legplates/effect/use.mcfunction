# ===================================================

# use



    ## Guide [ function armors:type/windriders_legplates/effect/use ] >>> use

    ## Guide [ function armors:type/windriders_legplates/use ] >>> use

    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off



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