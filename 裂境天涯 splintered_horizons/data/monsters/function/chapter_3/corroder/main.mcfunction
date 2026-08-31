# ===================================================
# 腐蝕者 主程式 / corroder main

    ## Guide [ function monsters:chapter_3/corroder/main ] >>> 腐蝕者 主程式 / corroder main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_3/corroder/1/main ] >>> 腐蝕者 技能1 分鏡 / corroder skill 1 timeline
    ## Guide [ function monsters:chapter_3/corroder/main.self ] >>> 腐蝕者 本體 初始化與冷卻檢查 / corroder self init and cooldown

# ===================================================

# Self

execute \
    as @s[tag=monsters.corroder,type=zombie] at @s run \
function monsters:chapter_3/corroder/main.self

# Skill 1

execute \
    as @s[tag=monsters.corroder.1,type=zombie] at @s run \
function monsters:chapter_3/corroder/1/main