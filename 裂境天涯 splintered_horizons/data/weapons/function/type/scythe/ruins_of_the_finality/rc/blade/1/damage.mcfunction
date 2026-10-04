# ===================================================
# 鐮 終焉之墟 右鍵 blade 階段 1 傷害 / scythe ruins of the finality right click blade step 1 damage

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/damage ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 傷害 / scythe ruins of the finality right click blade step 1 damage
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/calculate ] >>> weapons 劍 回音律動 計算 / weapons sword echo rhythm calculate

# ===================================================

tag @e[type=!player,type=!#dummy_mob,distance=..4] add dmger
tag @p add temp
tag @p[tag=temp] add atker
scoreboard players set @p[tag=atker,tag=temp] dmg_formula.atk_percentage 150

execute \
    as @p[tag=temp] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate