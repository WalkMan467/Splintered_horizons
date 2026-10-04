# ===================================================
# 更新血條數值 / update the bossbar value

    ## Guide [ function unstable_rift:chapter_1/1/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

$execute \
    store result bossbar unstable_rift.chapter_1.1.$(id) value run \
scoreboard players get @s unstable_rift.timer
