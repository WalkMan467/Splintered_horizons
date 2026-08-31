# ===================================================
# 森林信使 施法 結束並重設冷卻 / forest messenger cast end

    ## Guide [ function monsters:chapter_2/forest_messenger/cast/end ] >>> 森林信使 施法 結束並重設冷卻 / forest messenger cast end
    ## Guide [ function monsters:chapter_2/forest_messenger/1/1 ] >>> 森林信使 技能1 收尾 / forest messenger skill 1 finish
    ## Guide [ function monsters:chapter_2/forest_messenger/1/detect ] >>> 森林信使 技能1 圖騰被打掉偵測 / forest messenger skill 1 totem lost detect
    ## Guide [ function monsters:chapter_2/forest_messenger/1/main ] >>> 森林信使 技能1 分鏡 / forest messenger skill 1 timeline
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/remove ] >>> 繭 移除 入口 / cocoon remove entry

# ===================================================

## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.forest_messenger.1

# Rdm Skill CS


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip