# ===================================================
# 弓 終焉凝視者 右鍵 掃描箭矢 / bow the endwatcher right click scan arrow

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/mark_scan ] >>> 弓 終焉凝視者 右鍵 掃描箭矢 / bow the endwatcher right click scan arrow
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/mark_arrow ] >>> 弓 終焉凝視者 右鍵 標記箭矢 / bow the endwatcher right click mark arrow
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

# 執行者 : 剛放完第二段蓄力的玩家 ; 座標 : 玩家
#
# 為什麼不等 rc/main 再標 :
# rc/main 要等 use 分數被 timer 扣回 0 才知道箭射出去了，那已經是放箭後 2 tick，
# 近距離射怪的話箭早就打中了，進度就抓不到
# 這支每 tick 都跑，箭生出來的下一 tick 就會被標到，那時它還沒移動過
#
# 只抓 3 格內 : 剛生出來的箭還在玩家眼睛的位置，飛過 1 tick 的舊箭已經在 3 格外，
# 這樣同一把弓先前射出、還在空中的第一段箭就不會被誤標

execute \
    as @e[sort=arbitrary,distance=..3,tag=!weapon.the_endwatcher.arrow,type=#arrows] run \
function weapons:type/bow/the_endwatcher/rc/mark_arrow
