# ===================================================

# damage



    ## Guide [ function armors:type/windriders_legplates/effect/damage ] >>> damage

    ## Guide [ function armors:type/windriders_legplates/use ] >>> use

    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off



# ===================================================



tag @s add atker

scoreboard players set @s[tag=atker] dmg_formula.atk_percentage 250

function dmg_formula:armors/type/leggings/windriders_legplates/calculate

tag @s remove armors.windriders_legplates.effect