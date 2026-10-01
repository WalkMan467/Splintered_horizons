# ===================================================
# 更新血條數值 / update the bossbar value

    ## Guide [ function unstable_rift:main/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:main/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:main/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

# 參數 : area | id

$execute \
    store result bossbar unstable_rift.$(area).$(id) value run \
scoreboard players get @s unstable_rift.timer
