# ===================================================
# 災厄之主 施法 結束並重設冷卻 / lord of the cataclysm cast end

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/end ] >>> 災厄之主 施法 結束並重設冷卻 / lord of the cataclysm cast end
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/1/main ] >>> 災厄之主 技能1 分鏡 / lord of the cataclysm skill 1 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/2/main ] >>> 災厄之主 技能2 分鏡 / lord of the cataclysm skill 2 timeline
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/3/main ] >>> 災厄之主 技能3 分鏡 / lord of the cataclysm skill 3 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.lord_of_the_cataclysm.1
tag @s remove chapter_3.lord_of_the_cataclysm.2
tag @s remove chapter_3.lord_of_the_cataclysm.3

# Rdm Skill CD


execute \
    store result score @s monster.skill.rdm.skill run \
random value 1..2

execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip