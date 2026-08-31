# ===================================================
# 災厄之主 技能2 分鏡 / lord of the cataclysm skill 2 timeline

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/main ] >>> 災厄之主 技能2 分鏡 / lord of the cataclysm skill 2 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/1 ] >>> 災厄之主 技能2 蓄力音效 / lord of the cataclysm skill 2 charge
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/2 ] >>> 災厄之主 技能2 蓄力完成 / lord of the cataclysm skill 2 charged
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/3 ] >>> 災厄之主 技能2 震波爆發 / lord of the cataclysm skill 2 shockwave
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/end ] >>> 災厄之主 施法 結束並重設冷卻 / lord of the cataclysm cast end

# ===================================================

# 執行者 : boss


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/1

execute \
    if score @s monster.skill.casting matches 41 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/2

execute \
    if score @s monster.skill.casting matches 61 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/3


execute \
    if score @s monster.skill.casting matches 61.. run \
function monsters:chapter_3/lord_of_the_cataclysm/cast/end