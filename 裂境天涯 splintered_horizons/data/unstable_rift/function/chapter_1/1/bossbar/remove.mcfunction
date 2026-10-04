# ===================================================
# 移除專屬血條 / remove the player's own bossbar

    ## Guide [ function unstable_rift:chapter_1/1/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

execute \
    unless score @s unstable_rift.chapter_1.1.display.id matches -1073741823..1073741823 run \
return 0

$bossbar remove unstable_rift.chapter_1.1.$(id)

data remove storage unstable_rift:chapter_1.1 temp

scoreboard players reset @s unstable_rift.chapter_1.1.display.id
