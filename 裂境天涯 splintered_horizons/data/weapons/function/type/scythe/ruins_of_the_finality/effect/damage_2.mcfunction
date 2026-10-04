# ===================================================
# 鐮 終焉之墟 效果 damage 2 / scythe ruins of the finality effect damage 2

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/damage_2 ] >>> 鐮 終焉之墟 效果 damage 2 / scythe ruins of the finality effect damage 2
    ## Guide [ function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate ] >>> weapons 鐮 終焉之墟 計算 / weapons scythe ruins of the finality calculate

# ===================================================

tag @s add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 300

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate