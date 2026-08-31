# ===================================================
# 「永劫」的使徒 主程式 / apostle of eternity main

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main ] >>> 「永劫」的使徒 主程式 / apostle of eternity main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/1/main ] >>> 「永劫」的使徒 技能1 分鏡 / apostle of eternity skill 1 timeline
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main.monster ] >>> 「永劫」的使徒 本體 冷卻檢查 / apostle of eternity self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_2.apostle_of_eternity.1,type=zombie] run \
function monsters:chapter_2/apostle_of_eternity/1/main

# Monster Self

execute \
    as @s[tag=monsters.apostle_of_eternity,type=zombie] run \
function monsters:chapter_2/apostle_of_eternity/main.monster