# ===================================================
# 建立專屬血條 / create the player's own bossbar

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/out ] >>> 離開裂隙 / leave the rift
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:main/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down
    ## Guide [ function unstable_rift:main/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

# 參數 : area | id 每人獨立的亂數 | time 血條上限 | title / fallback 標題

$bossbar add unstable_rift.$(area).$(id) {"translate":"$(title)","fallback":"$(fallback)"}

$bossbar set unstable_rift.$(area).$(id) players @s
$bossbar set unstable_rift.$(area).$(id) color red
$bossbar set unstable_rift.$(area).$(id) style notched_12
$bossbar set unstable_rift.$(area).$(id) max $(time)

data remove storage unstable_rift:main args.id
