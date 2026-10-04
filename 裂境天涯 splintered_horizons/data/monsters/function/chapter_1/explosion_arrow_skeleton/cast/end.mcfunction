# ===================================================
# 深淵射手 施法 結束並重設冷卻 / explosion arrow skeleton cast end

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/end ] >>> 深淵射手 施法 結束並重設冷卻 / explosion arrow skeleton cast end
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/1 ] >>> 深淵射手 技能1 收回爆裂箭 / explosion arrow skeleton skill 1 unload arrow
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/main ] >>> 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.explosion_arrow_skeleton.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip