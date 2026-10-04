# ===================================================
# 夢魘 深淵爆炸 排程 / nightmare abyss explode scheduler

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/main ] >>> 夢魘 深淵爆炸 排程 / nightmare abyss explode scheduler
    ## Guide [ function monsters:load ] >>> 怪物 載入 / monsters load
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/point/guide ] >>> 夢魘 深淵爆炸 爆點 計時 / abyss explode point timer
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/poison/guide ] >>> 夢魘 深淵爆炸 毒液 飛行中 / abyss explode poison in flight

# ===================================================

execute \
    as @e[sort=arbitrary,distance=0..,tag=monster.nightmare_difficulty.abyss_explode.poison,type=item] at @s run \
function monsters:generic/nightmare_difficulty/abyss_explode/poison/guide

execute \
    as @e[sort=arbitrary,distance=0..,tag=monster.nightmare_difficulty.abyss_explode.point,type=area_effect_cloud] at @s run \
function monsters:generic/nightmare_difficulty/abyss_explode/point/guide

schedule function monsters:generic/nightmare_difficulty/abyss_explode/main 1t