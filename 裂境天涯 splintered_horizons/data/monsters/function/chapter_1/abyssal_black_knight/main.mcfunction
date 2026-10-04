# ===================================================
# 深淵黑騎 主程式 / abyssal black knight main

    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main ] >>> 深淵黑騎 主程式 / abyssal black knight main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/1/main ] >>> 深淵黑騎 技能1 主體 群體加速 / abyssal black knight skill 1 body
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main.monster ] >>> 深淵黑騎 本體 冷卻檢查 / abyssal black knight self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_1.abyssal_black_knight.1,type=zombie] run \
function monsters:chapter_1/abyssal_black_knight/1/main

# Monster Self

execute \
    as @s[tag=monsters.abyssal_black_knight,type=zombie] run \
function monsters:chapter_1/abyssal_black_knight/main.monster