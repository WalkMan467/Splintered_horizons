# ===================================================
# 鐮 終焉之墟 右鍵 動畫 階段 1 傷害 / scythe ruins of the finality right click animation step 1 damage

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/animation/1/damage ] >>> 鐮 終焉之墟 右鍵 動畫 階段 1 傷害 / scythe ruins of the finality right click animation step 1 damage
    ## Guide [ function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate ] >>> weapons 鐮 終焉之墟 計算 / weapons scythe ruins of the finality calculate

# ===================================================

tag @e[type=!#minecraft:dummy_mob,type=!player,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 250

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate