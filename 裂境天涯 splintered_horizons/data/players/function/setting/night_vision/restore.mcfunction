# ===================================================
# 夜視效果 重生後補回 / night vision restore after respawn

    ## Guide [ function players:setting/night_vision/restore ] >>> 夜視效果 重生後補回 / night vision restore after respawn
    ## Guide [ function players:setting/night_vision/1 ] >>> 夜視效果 開啟 / night vision on
    ## Guide [ function sys:respawnpoint/tp/use ] >>> 重生點 傳送 / respawn point teleport

# ===================================================

# 執行者 : 剛重生的玩家（由 sys:respawnpoint/tp/use 在重生流程收尾時呼叫）
#
# 原版重生會把身上的效果全部清光，但開關是記在 player.setting.night_vision 這個分數上，
# 分數不會跟著被清掉 —— 結果就是管理員設置裡顯示「開啟」，實際上卻沒有夜視，
# 而且因為開關還是開的，再按一次只會把它關掉，要按兩次才回得來。
#
# 這裡照分數把效果補回去，開關與實際狀態就不會再對不上

execute \
    unless score @s player.setting.night_vision matches 1.. run \
    return run \
return 0

effect give @s night_vision infinite 255 true
