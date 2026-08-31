# ===================================================
# 腐蝕者 施法 結束並重設冷卻 / corroder cast end

    ## Guide [ function monsters:chapter_3/corroder/cast/end ] >>> 腐蝕者 施法 結束並重設冷卻 / corroder cast end
    ## Guide [ function monsters:chapter_3/corroder/1/end ] >>> 腐蝕者 技能1 收尾 / corroder skill 1 finish

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove monsters.corroder.1

# Rdm Skill CS

execute \
    store result score @s monster.skill.cast.at run \
random value 180..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip