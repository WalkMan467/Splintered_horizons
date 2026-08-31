# ===================================================
# 災厄之主 技能1 隨機方位生成龍捲風 / lord of the cataclysm skill 1 spawn tornado

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/1 ] >>> 災厄之主 技能1 隨機方位生成龍捲風 / lord of the cataclysm skill 1 spawn tornado
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/main ] >>> 災厄之主 技能1 分鏡 / lord of the cataclysm skill 1 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/1b ] >>> 災厄之主 技能1 龍捲風初始化 / lord of the cataclysm skill 1 tornado init

# ===================================================

execute \
    store result score @s monster.lord_of_the_cataclysm.1.rdm run \
random value 1..4


execute \
    if score @s monster.lord_of_the_cataclysm.1.rdm matches 1 rotated 0 0 \
    positioned ^ ^ ^5 summon block_display run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1b

execute \
    if score @s monster.lord_of_the_cataclysm.1.rdm matches 2 rotated 90 0 \
    positioned ^ ^ ^5 summon block_display run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1b

execute \
    if score @s monster.lord_of_the_cataclysm.1.rdm matches 3 rotated 180 0 \
    positioned ^ ^ ^5 summon block_display run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1b

execute \
    if score @s monster.lord_of_the_cataclysm.1.rdm matches 4 rotated -90 0 \
    positioned ^ ^ ^5 summon block_display run \
function monsters:chapter_3/lord_of_the_cataclysm/1/1b