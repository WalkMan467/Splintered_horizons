# ===================================================
# 苦力怕偵測 排程 / creeper detect scheduler

    ## Guide [ function monsters:generic/creeper_detect/main ] >>> 苦力怕偵測 排程 / creeper detect scheduler
    ## Guide [ function monsters:load ] >>> 怪物 載入 / monsters load
    ## Guide [ function monsters:generic/creeper_detect/guide ] >>> 苦力怕偵測 分派 / creeper detect dispatch

# ===================================================

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,limit=20,type=area_effect_cloud] at @s run \
function monsters:generic/creeper_detect/guide

schedule function monsters:generic/creeper_detect/main 1t