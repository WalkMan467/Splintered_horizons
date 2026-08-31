# ===================================================
# 災厄之主 技能3 分鏡 / lord of the cataclysm skill 3 timeline

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/3/main ] >>> 災厄之主 技能3 分鏡 / lord of the cataclysm skill 3 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/3/1 ] >>> 災厄之主 技能3 自我護盾 / lord of the cataclysm skill 3 shield
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/end ] >>> 災厄之主 施法 結束並重設冷卻 / lord of the cataclysm cast end

# ===================================================

# 執行者 : boss


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/3/1


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/cast/end