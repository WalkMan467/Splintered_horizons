# ===================================================
# 深淵黑騎 死亡處理 / abyssal black knight on kill

    ## Guide [ function monsters:chapter_1/abyssal_black_knight/kill ] >>> 深淵黑騎 死亡處理 / abyssal black knight on kill
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger

# ===================================================

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use