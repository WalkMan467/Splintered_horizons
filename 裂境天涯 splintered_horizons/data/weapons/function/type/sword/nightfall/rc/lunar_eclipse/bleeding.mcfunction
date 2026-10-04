# ===================================================
# 劍 夜幕 右鍵 流血 / sword nightfall right click bleeding

    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/bleeding ] >>> 劍 夜幕 右鍵 流血 / sword nightfall right click bleeding
    ## Guide [ function weapons:type/sword/nightfall/rc/use ] >>> 劍 夜幕 右鍵 觸發 / sword nightfall right click activate

# ===================================================

# 執行者 : 玩家 ; 座標 : 玩家
#
# 流血參數跟整包其他來源一致：2 秒一跳、基礎 2 點

execute \
    as @e[sort=arbitrary,distance=..4,type=!player,type=!#minecraft:dummy_mob] run \
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}
