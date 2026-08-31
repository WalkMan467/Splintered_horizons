# ===================================================
# 時空裂痕的使者 施法 結束並重設冷卻 / emissary of the temporal rift cast end

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end ] >>> 時空裂痕的使者 施法 結束並重設冷卻 / emissary of the temporal rift cast end
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/main ] >>> 時空裂痕的使者 技能1 分鏡 / emissary of the temporal rift skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.emissary_of_the_temporal_rift.1


# Rdm Skill CS


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip