# ===================================================
# 「永劫」的使徒 死亡處理 / apostle of eternity on kill

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/kill ] >>> 「永劫」的使徒 死亡處理 / apostle of eternity on kill
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger

# ===================================================

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use