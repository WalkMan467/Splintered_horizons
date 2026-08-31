# ===================================================
# 深淵狂暴者 死亡處理 / abyss berserker on kill

    ## Guide [ function monsters:chapter_1/abyss_berserker/kill ] >>> 深淵狂暴者 死亡處理 / abyss berserker on kill
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use