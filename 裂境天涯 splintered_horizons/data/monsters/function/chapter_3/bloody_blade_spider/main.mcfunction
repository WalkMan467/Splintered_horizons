# ===================================================
# 血滴子蜘蛛 主程式 / bloody blade spider main

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main ] >>> 血滴子蜘蛛 主程式 / bloody blade spider main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/main ] >>> 血滴子蜘蛛 技能1 分鏡 / bloody blade spider skill 1 timeline
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main.monster ] >>> 血滴子蜘蛛 本體 冷卻與乘客處理 / bloody blade spider self tick

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_3.bloody_blade_spider.1,type=spider] run \
function monsters:chapter_3/bloody_blade_spider/1/main

# Monster Self

execute \
    as @s[tag=monsters.bloody_blade_spider,type=spider] run \
function monsters:chapter_3/bloody_blade_spider/main.monster