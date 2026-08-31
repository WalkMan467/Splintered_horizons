# ===================================================
# 烈陽使者 施法 結束並重設冷卻 / sunfire emissary cast end

    ## Guide [ function monsters:chapter_3/sunfire_emissary/cast/end ] >>> 烈陽使者 施法 結束並重設冷卻 / sunfire emissary cast end
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/main ] >>> 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.sunfire_emissary.1

data modify entity @s NoAI set value 0b

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip