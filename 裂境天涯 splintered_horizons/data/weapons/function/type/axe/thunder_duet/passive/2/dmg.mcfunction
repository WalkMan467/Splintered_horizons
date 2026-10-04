# ===================================================
# 斧 雷霆二重奏 被動 階段 2 傷害 / axe thunder duet passive step 2 damage

    ## Guide [ function weapons:type/axe/thunder_duet/passive/2/dmg ] >>> 斧 雷霆二重奏 被動 階段 2 傷害 / axe thunder duet passive step 2 damage
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/calculate ] >>> weapons 劍 回音律動 計算 / weapons sword echo rhythm calculate
    ## Guide [ function weapons:type/axe/thunder_duet/passive/2/run ] >>> 斧 雷霆二重奏 被動 階段 2 執行 / axe thunder duet passive step 2 run

# ===================================================

tag @e[type=!player,type=!#dummy_mob,distance=..6] add dmger
scoreboard players set @p[sort=arbitrary,tag=atker] dmg_formula.atk_percentage 350

execute \
    as @p[sort=arbitrary,tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

scoreboard players set #particle.thunder_duet_wave.color particle 2
function particle:thunder_duet_wave/use

effect clear @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] glowing
scoreboard players reset @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.target.marker