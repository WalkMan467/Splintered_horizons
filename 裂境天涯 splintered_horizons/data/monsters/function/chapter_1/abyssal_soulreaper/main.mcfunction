# ===================================================
# 深淵斷魂者 主程式 / abyssal soulreaper main

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main ] >>> 深淵斷魂者 主程式 / abyssal soulreaper main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/main ] >>> 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main.monster ] >>> 深淵斷魂者 本體 冷卻檢查 / abyssal soulreaper self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_1.abyssal_soulreaper.1,type=zombie] run \
function monsters:chapter_1/abyssal_soulreaper/1/main

# Monster Self

execute \
    as @s[tag=monster.abyssal_soulreaper,type=zombie] run \
function monsters:chapter_1/abyssal_soulreaper/main.monster