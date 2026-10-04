# ===================================================
# 更新血條 / update the bossbar

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/display ] >>> 更新血條 / update the bossbar

# ===================================================

# 參數 : area
#
# 觀眾每 tick 重設一次，不然中途進來的人看不到這條

$bossbar set unstable_rift.$(area).erosion players @a[tag=unstable_rift.$(area)]

$execute \
    store result bossbar unstable_rift.$(area).erosion value run \
scoreboard players get #unstable_rift.$(area).erosion global.main