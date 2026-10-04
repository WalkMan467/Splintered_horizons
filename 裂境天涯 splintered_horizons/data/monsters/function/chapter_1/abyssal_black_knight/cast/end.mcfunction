# ===================================================
# 深淵黑騎 施法 結束並重設冷卻 / abyssal black knight cast end

    ## Guide [ function monsters:chapter_1/abyssal_black_knight/cast/end ] >>> 深淵黑騎 施法 結束並重設冷卻 / abyssal black knight cast end
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/1/main ] >>> 深淵黑騎 技能1 主體 群體加速 / abyssal black knight skill 1 body

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.abyssal_black_knight.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip