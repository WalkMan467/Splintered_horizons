# ===================================================
# 區域清空歸零 / reset when the area empties

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/reset ] >>> 區域清空歸零 / reset when the area empties
    ## Guide [ function unstable_rift:main/erosion/open ] >>> 開啟侵蝕度血條 / open the erosion bossbar

# ===================================================

# 參數 : area
#
# 離線的玩家不在 @a 裡，所以斷線導致區域清空也會被這裡收掉

$bossbar remove unstable_rift.$(area).erosion

$scoreboard players reset #unstable_rift.$(area).erosion global.main
$scoreboard players reset #unstable_rift.$(area).erosion.rate global.main
$scoreboard players reset #unstable_rift.$(area).erosion.elapsed global.main
$scoreboard players reset #unstable_rift.$(area).erosion.tick global.main
$scoreboard players reset #unstable_rift.$(area).erosion.half global.main
$scoreboard players reset #unstable_rift.$(area).erosion.stage global.main
