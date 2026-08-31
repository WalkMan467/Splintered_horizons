# ===================================================
# 血滴子蜘蛛 施法 結束並重設冷卻 / bloody blade spider cast end

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/end ] >>> 血滴子蜘蛛 施法 結束並重設冷卻 / bloody blade spider cast end
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/0 ] >>> 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/main ] >>> 血滴子蜘蛛 技能1 分鏡 / bloody blade spider skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.bloody_blade_spider.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip