# ===================================================
# 「永劫」的使徒 施法 結束並重設冷卻 / apostle of eternity cast end

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/cast/end ] >>> 「永劫」的使徒 施法 結束並重設冷卻 / apostle of eternity cast end
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/1/main ] >>> 「永劫」的使徒 技能1 分鏡 / apostle of eternity skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.apostle_of_eternity.1

# Rdm Skill CD

data modify entity @s NoAI set value 0b

execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip