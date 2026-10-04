# ===================================================
# 收尾清理 / tear down

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down
    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

tag @s remove unstable_rift.chapter_1.1

function players:inventory/return {bag:"overworld"}

execute \
    store result storage unstable_rift:chapter_1.1 temp.id int 1 run \
scoreboard players get @s unstable_rift.chapter_1.1.display.id

function unstable_rift:chapter_1/1/bossbar/remove with storage unstable_rift:chapter_1.1 temp

scoreboard players reset @s unstable_rift.timer
