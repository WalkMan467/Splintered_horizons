# ===================================================
# 深淵水晶 施法 結束並重設冷卻 / abyss crystal cast end

    ## Guide [ function monsters:other/abyss_crystal/cast/end ] >>> 深淵水晶 施法 結束並重設冷卻 / abyss crystal cast end
    ## Guide [ function monsters:other/abyss_crystal/1/main ] >>> 深淵水晶 技能1 致盲爆發 / abyss crystal skill 1 blind burst

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.abyss_crystal.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip