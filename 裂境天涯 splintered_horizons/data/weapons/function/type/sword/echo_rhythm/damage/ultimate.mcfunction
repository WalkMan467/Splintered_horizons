# ===================================================
# 劍 回音律動 傷害 ultimate / sword echo rhythm damage ultimate

    ## Guide [ function weapons:type/sword/echo_rhythm/damage/ultimate ] >>> 劍 回音律動 傷害 ultimate / sword echo rhythm damage ultimate
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/ultimate/calculate ] >>> weapons 劍 回音律動 ultimate 計算 / weapons sword echo rhythm ultimate calculate
    ## Guide [ function weapons:type/sword/echo_rhythm/rc/use ] >>> 劍 回音律動 右鍵 觸發 / sword echo rhythm right click activate

# ===================================================


execute \
    as @e[type=!player,type=!#dummy_mob,distance=..8] \
    unless score @s sys.dummy_mob matches 1.. run \
effect give @s slowness 3 2 false

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 250

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/ultimate/calculate

scoreboard players set #particle.sound_wave.color particle 2
function particle:sound_wave/use