# ===================================================
# 暗蝕的烈陽 施法 結束並重設冷卻 / sun of the abyssal eclipse cast end

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/end ] >>> 暗蝕的烈陽 施法 結束並重設冷卻 / sun of the abyssal eclipse cast end
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/main ] >>> 暗蝕的烈陽 技能1 分鏡 / sun of the abyssal eclipse skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove other.sun_of_the_abyssal_eclipse.1

data modify entity @s NoAI set value 0b

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip