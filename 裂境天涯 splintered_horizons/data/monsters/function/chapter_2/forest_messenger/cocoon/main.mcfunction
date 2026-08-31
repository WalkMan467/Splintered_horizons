# ===================================================
# 繭 排程 / cocoon scheduler

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/main ] >>> 繭 排程 / cocoon scheduler
    ## Guide [ function monsters:load ] >>> 怪物 載入 / monsters load
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/guide ] >>> 繭 旋轉與判定 / cocoon rotate and check

# ===================================================

execute \
    as @a at @s run \
scoreboard players remove @e[distance=..60,type=!player,scores={monster.forest_messenger.user=1..}] monster.forest_messenger.user 1


execute \
    as @a at @s \
    as @e[distance=..60,tag=monster.forest_messenger.cocoon.main,type=item_display] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/guide

schedule function monsters:chapter_2/forest_messenger/cocoon/main 1t