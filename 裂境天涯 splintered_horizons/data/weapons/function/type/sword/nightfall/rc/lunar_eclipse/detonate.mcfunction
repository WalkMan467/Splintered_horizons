# ===================================================
# 劍 夜幕 右鍵 引爆月蝕 / sword nightfall right click detonate lunar eclipse

    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/detonate ] >>> 劍 夜幕 右鍵 引爆月蝕 / sword nightfall right click detonate lunar eclipse
    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/loop ] >>> 劍 夜幕 右鍵 引爆月蝕 迴圈 / sword nightfall right click detonate lunar eclipse loop
    ## Guide [ function weapons:type/sword/nightfall/rc/use ] >>> 劍 夜幕 右鍵 觸發 / sword nightfall right click activate

# ===================================================

# 執行者 : 玩家 ; 座標 : 玩家
#
# 先把 4 格內、身上有月蝕層數的敵人標起來，再交給 loop 一隻一隻算
# 因為每隻層數不同，傷害不能一次套給全部

execute \
    as @e[sort=arbitrary,distance=..4,scores={weapon.nightfall.lunar_eclipse=1..},type=!player,type=!#minecraft:dummy_mob] run \
tag @s add nightfall.eclipse

function weapons:type/sword/nightfall/rc/lunar_eclipse/loop