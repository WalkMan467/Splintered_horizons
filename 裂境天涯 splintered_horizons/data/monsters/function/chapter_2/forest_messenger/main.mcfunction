# ===================================================
# 森林信使 主程式 / forest messenger main

    ## Guide [ function monsters:chapter_2/forest_messenger/main ] >>> 森林信使 主程式 / forest messenger main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_2/forest_messenger/1/main ] >>> 森林信使 技能1 分鏡 / forest messenger skill 1 timeline
    ## Guide [ function monsters:chapter_2/forest_messenger/main.monster ] >>> 森林信使 本體 冷卻與武器切換 / forest messenger self tick

# ===================================================

# Skill 1

execute \
    as @s[tag=monster.forest_messenger,tag=chapter_2.forest_messenger.1] run \
function monsters:chapter_2/forest_messenger/1/main

# Monster Self

execute \
    as @s[tag=monster.forest_messenger] run \
function monsters:chapter_2/forest_messenger/main.monster