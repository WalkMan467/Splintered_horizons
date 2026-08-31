# ===================================================
# 災厄之主 技能1 分鏡 / lord of the cataclysm skill 1 timeline

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/main ] >>> 災厄之主 技能1 分鏡 / lord of the cataclysm skill 1 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/1 ] >>> 災厄之主 技能1 隨機方位生成龍捲風 / lord of the cataclysm skill 1 spawn tornado
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/end ] >>> 災厄之主 施法 結束並重設冷卻 / lord of the cataclysm cast end

# ===================================================

# 執行者 : boss


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/cast/end