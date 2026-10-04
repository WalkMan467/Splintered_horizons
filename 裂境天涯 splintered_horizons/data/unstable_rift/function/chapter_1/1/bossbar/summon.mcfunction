# ===================================================
# 建立專屬血條 / create the player's own bossbar

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

$bossbar add unstable_rift.chapter_1.1.$(id) {"translate":"unstable_rift.chapter_1.1.timer","fallback":"剩餘時間"}

$bossbar set unstable_rift.chapter_1.1.$(id) players @s
$bossbar set unstable_rift.chapter_1.1.$(id) color red
$bossbar set unstable_rift.chapter_1.1.$(id) style notched_12
$bossbar set unstable_rift.chapter_1.1.$(id) max 12000

data remove storage unstable_rift:chapter_1.1 temp
