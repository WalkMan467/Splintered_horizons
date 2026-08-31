# ===================================================
# 深淵斷魂者 死亡處理 / abyssal soulreaper on kill

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/kill ] >>> 深淵斷魂者 死亡處理 / abyssal soulreaper on kill
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger

# ===================================================

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use