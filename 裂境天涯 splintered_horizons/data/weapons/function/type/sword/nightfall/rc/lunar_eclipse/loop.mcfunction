# ===================================================
# 劍 夜幕 右鍵 引爆月蝕 迴圈 / sword nightfall right click detonate lunar eclipse loop

    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/loop ] >>> 劍 夜幕 右鍵 引爆月蝕 迴圈 / sword nightfall right click detonate lunar eclipse loop
    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/detonate ] >>> 劍 夜幕 右鍵 引爆月蝕 / sword nightfall right click detonate lunar eclipse
    ## Guide [ function dmg_formula:weapons/type/sword/nightfall/lunar_eclipse/calculate ] >>> weapons 劍 夜幕 月蝕 計算 / weapons sword nightfall lunar eclipse calculate

# ===================================================

# 執行者 : 玩家 ; 座標 : 玩家
#
# 每圈只處理最近的一隻：把它換成 dmger、讀走層數、清掉層數，
# 再拿「層數 x 150%」當作攻擊力百分比丟給傷害公式。
# calculate 最後會把 dmger 標籤清掉，所以下一圈不會複打。

execute \
    unless entity @n[tag=nightfall.eclipse,distance=..4,type=!player] run \
return 0

tag @n[tag=nightfall.eclipse,distance=..4,type=!player] add dmger
tag @n[tag=dmger,distance=..4,type=!player] remove nightfall.eclipse

scoreboard players operation #stacks weapon.nightfall.lunar_eclipse = @n[tag=dmger,distance=..4,type=!player] weapon.nightfall.lunar_eclipse
scoreboard players reset @n[tag=dmger,distance=..4,type=!player] weapon.nightfall.lunar_eclipse

# 每層 150% 基礎傷害

scoreboard players set @s dmg_formula.atk_percentage 150
scoreboard players operation @s dmg_formula.atk_percentage *= #stacks weapon.nightfall.lunar_eclipse

function dmg_formula:weapons/type/sword/nightfall/lunar_eclipse/calculate

# 下一隻

function weapons:type/sword/nightfall/rc/lunar_eclipse/loop
