# ===================================================
# 深淵射手 主程式 / explosion arrow skeleton main

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main ] >>> 深淵射手 主程式 / explosion arrow skeleton main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/main ] >>> 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main.monster ] >>> 深淵射手 本體 冷卻檢查 / explosion arrow skeleton self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_1.explosion_arrow_skeleton.1,type=skeleton] run \
function monsters:chapter_1/explosion_arrow_skeleton/1/main

# Monster Self

execute \
    as @s[tag=monster.explosion_arrow_skeleton,type=skeleton] run \
function monsters:chapter_1/explosion_arrow_skeleton/main.monster