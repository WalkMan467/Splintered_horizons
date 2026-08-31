# ===================================================
# 魂之神射手 主程式 / soul sharpshooter main

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main ] >>> 魂之神射手 主程式 / soul sharpshooter main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/1/main ] >>> 魂之神射手 技能1 浮空 / soul sharpshooter skill 1 levitate
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/main ] >>> 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main.monster ] >>> 魂之神射手 本體 冷卻檢查 / soul sharpshooter self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=monsters.soul_sharpshooter,tag=chapter_2.soul_sharpshooter.1] at @s run \
function monsters:chapter_2/soul_sharpshooter/1/main

# Skill 2

execute \
    as @s[tag=monsters.soul_sharpshooter,tag=chapter_2.soul_sharpshooter.2] at @s run \
function monsters:chapter_2/soul_sharpshooter/2/main

# Monster Self

execute \
    as @s[tag=monsters.soul_sharpshooter] at @s run \
function monsters:chapter_2/soul_sharpshooter/main.monster