# ===================================================
# 災厄之主 施法 開始 隨機選技 / lord of the cataclysm cast begin

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/cast ] >>> 災厄之主 施法 開始 隨機選技 / lord of the cataclysm cast begin
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick
    ## Guide [ function monsters:-init/no_cast ] >>> 永不施放 哨兵值 / no cast sentinel
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/use ] >>> 災厄之主 技能1 起手 / lord of the cataclysm skill 1 start
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/use ] >>> 災厄之主 技能2 起手 / lord of the cataclysm skill 2 start

# ===================================================

## ----- Casting begins ----- ##
function monsters:-init/no_cast

# Skills


execute \
    if score @s monster.skill.rdm.skill matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/1/use

execute \
    if score @s monster.skill.rdm.skill matches 2 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/use