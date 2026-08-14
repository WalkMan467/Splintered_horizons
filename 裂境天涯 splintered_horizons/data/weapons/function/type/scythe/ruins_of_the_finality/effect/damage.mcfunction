# ===================================================
# 鐮 終焉之墟 效果 傷害 / scythe ruins of the finality effect damage

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/damage ] >>> 鐮 終焉之墟 效果 傷害 / scythe ruins of the finality effect damage
    ## Guide [ function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate ] >>> weapons 鐮 終焉之墟 計算 / weapons scythe ruins of the finality calculate
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/explosion ] >>> 鐮 終焉之墟 效果 explosion / scythe ruins of the finality effect explosion

# ===================================================

tag @s add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 150

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate