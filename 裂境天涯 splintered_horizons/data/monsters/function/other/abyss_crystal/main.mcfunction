# ===================================================
# 深淵水晶 主程式 / abyss crystal main

    ## Guide [ function monsters:other/abyss_crystal/main ] >>> 深淵水晶 主程式 / abyss crystal main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:other/abyss_crystal/1/main ] >>> 深淵水晶 技能1 致盲爆發 / abyss crystal skill 1 blind burst
    ## Guide [ function monsters:other/abyss_crystal/main.monster ] >>> 深淵水晶 本體 冷卻與受擊 / abyss crystal self tick

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

# Skill 1

execute \
    as @s[tag=chapter_1.abyss_crystal.1,type=zombie] run \
function monsters:other/abyss_crystal/1/main

# Monster Self

execute \
    as @s[tag=monsters.abyss_crystal,type=zombie] run \
function monsters:other/abyss_crystal/main.monster