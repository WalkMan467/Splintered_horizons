# ===================================================
# 劍 回音律動 傷害 stronger / sword echo rhythm damage stronger

    ## Guide [ function weapons:type/sword/echo_rhythm/damage/stronger ] >>> 劍 回音律動 傷害 stronger / sword echo rhythm damage stronger
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/stronger/calculate ] >>> weapons 劍 回音律動 stronger 計算 / weapons sword echo rhythm stronger calculate
    ## Guide [ function weapons:type/sword/echo_rhythm/use ] >>> 劍 回音律動 觸發 / sword echo rhythm activate

# ===================================================

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 200

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/stronger/calculate

scoreboard players set #particle.sound_wave.color particle 1
function particle:sound_wave/use