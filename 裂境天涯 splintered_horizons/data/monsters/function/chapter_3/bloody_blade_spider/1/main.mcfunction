# ===================================================
# 血滴子蜘蛛 技能1 分鏡 / bloody blade spider skill 1 timeline

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/main ] >>> 血滴子蜘蛛 技能1 分鏡 / bloody blade spider skill 1 timeline
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/main ] >>> 血滴子蜘蛛 主程式 / bloody blade spider main
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/0 ] >>> 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/end ] >>> 血滴子蜘蛛 施法 結束並重設冷卻 / bloody blade spider cast end

# ===================================================

function monsters:chapter_3/bloody_blade_spider/cast/end

execute \
    if score @s sys.silence matches 1.. run \
return 0

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/bloody_blade_spider/1/0