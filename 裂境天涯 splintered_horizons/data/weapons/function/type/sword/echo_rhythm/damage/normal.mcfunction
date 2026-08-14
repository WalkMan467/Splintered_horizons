# ===================================================
# 劍 回音律動 傷害 normal / sword echo rhythm damage normal

    ## Guide [ function weapons:type/sword/echo_rhythm/damage/normal ] >>> 劍 回音律動 傷害 normal / sword echo rhythm damage normal
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/calculate ] >>> weapons 劍 回音律動 計算 / weapons sword echo rhythm calculate
    ## Guide [ function weapons:type/sword/echo_rhythm/use ] >>> 劍 回音律動 觸發 / sword echo rhythm activate

# ===================================================

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 150

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

scoreboard players set #particle.sound_wave.color particle 0
function particle:sound_wave/use