# ===================================================
# 災厄之主 排程 / lord of the cataclysm scheduler

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main ] >>> 災厄之主 排程 / lord of the cataclysm scheduler
    ## Guide [ function monsters:summon/chapter_3/lord_of_the_cataclysm ] >>> 召喚 災厄之主 / summon lord of the cataclysm
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/3 ] >>> 災厄之主 技能1 龍捲風追擊 / lord of the cataclysm skill 1 tornado chase
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/main.monster ] >>> 災厄之主 本體 血條與技能分派 / lord of the cataclysm self tick

# ===================================================

# Tornado

execute \
    as @e[type=block_display,tag=chapter_3.lord_of_the_cataclysm.1.1] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/1/3

# Monster Self

execute \
    as @n[type=zombie,tag=monsters.lord_of_the_cataclysm] at @s run \
function monsters:chapter_3/lord_of_the_cataclysm/main.monster

schedule function monsters:chapter_3/lord_of_the_cataclysm/main 1t