# ===================================================
# 斧 雷霆二重奏 被動 階段 1 傷害 / axe thunder duet passive step 1 damage

    ## Guide [ function weapons:type/axe/thunder_duet/passive/1/dmg ] >>> 斧 雷霆二重奏 被動 階段 1 傷害 / axe thunder duet passive step 1 damage
    ## Guide [ function dmg_formula:weapons/type/sword/echo_rhythm/calculate ] >>> weapons 劍 回音律動 計算 / weapons sword echo rhythm calculate
    ## Guide [ function weapons:type/axe/thunder_duet/passive/1/run ] >>> 斧 雷霆二重奏 被動 階段 1 執行 / axe thunder duet passive step 1 run

# ===================================================

tag @s add dmger
tag @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=!atker] add atker
scoreboard players set @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] dmg_formula.atk_percentage 75

execute \
    as @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

execute \
    rotated ~ 0 \
    if block ^ ^ ^-1 #penetrate \
    if block ^ ^1 ^-1 #penetrate run \
tp @s[tag=!sys.dummy_mob.interface,tag=!sys.dummy_mob,tag=!sys.no_knockback] ^ ^ ^-1