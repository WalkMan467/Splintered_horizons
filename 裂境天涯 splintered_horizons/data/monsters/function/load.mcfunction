# ===================================================
# 怪物 載入 / monsters load

    ## Guide [ function monsters:load ] >>> 怪物 載入 / monsters load
    ## Guide [ function main:load ] >>> load
    ## Guide [ function bossfight:chapter_2/act/main ] >>> main
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/lock/main ] >>> 時空鎖 逐 tick 倒數 / time lock tick
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/main ] >>> 繭 排程 / cocoon scheduler
    ## Guide [ function monsters:generic/creeper_detect/main ] >>> 苦力怕偵測 排程 / creeper detect scheduler
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/main ] >>> 夢魘 深淵爆炸 排程 / nightmare abyss explode scheduler

# ===================================================

schedule function bossfight:chapter_2/act/main 1t
schedule function monsters:generic/nightmare_difficulty/abyss_explode/main 1t
schedule function monsters:chapter_2/apostle_of_eternity/lock/main 1t
schedule function monsters:generic/creeper_detect/main 1t
schedule function monsters:chapter_2/forest_messenger/cocoon/main 1t
schedule function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/main 1t