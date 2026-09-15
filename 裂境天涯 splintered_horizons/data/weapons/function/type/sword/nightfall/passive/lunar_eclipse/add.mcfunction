# ===================================================
# 劍 夜幕 被動 月蝕疊加 / sword nightfall passive lunar eclipse add

    ## Guide [ function weapons:type/sword/nightfall/passive/lunar_eclipse/add ] >>> 劍 夜幕 被動 月蝕疊加 / sword nightfall passive lunar eclipse add
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/hurt ] >>> 劍 夜幕 被動 傷害 受擊 / sword nightfall passive damage on hurt

# ===================================================

# 執行者 : 被夜幕打中的敵人
#
# 疊幾層由呼叫端先寫進 #count，這邊不用 macro。
# scoreboard players operation 對沒有值的分數會先建成 0，不需要另外初始化。
# 上限 12 層。

execute \
    if entity @s[type=player] run \
return 0

execute \
    if entity @s[type=#minecraft:dummy_mob] run \
return 0

scoreboard players operation @s weapon.nightfall.lunar_eclipse += #count weapon.nightfall.lunar_eclipse

execute \
    if score @s weapon.nightfall.lunar_eclipse matches 13.. run \
scoreboard players set @s weapon.nightfall.lunar_eclipse 12
