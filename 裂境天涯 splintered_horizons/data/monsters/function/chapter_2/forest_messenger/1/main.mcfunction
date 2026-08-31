# ===================================================
# 森林信使 技能1 分鏡 / forest messenger skill 1 timeline

    ## Guide [ function monsters:chapter_2/forest_messenger/1/main ] >>> 森林信使 技能1 分鏡 / forest messenger skill 1 timeline
    ## Guide [ function monsters:chapter_2/forest_messenger/main ] >>> 森林信使 主程式 / forest messenger main
    ## Guide [ function monsters:chapter_2/forest_messenger/1/0 ] >>> 森林信使 技能1 生成繭 / forest messenger skill 1 spawn cocoon
    ## Guide [ function monsters:chapter_2/forest_messenger/1/1 ] >>> 森林信使 技能1 收尾 / forest messenger skill 1 finish
    ## Guide [ function monsters:chapter_2/forest_messenger/1/detect ] >>> 森林信使 技能1 圖騰被打掉偵測 / forest messenger skill 1 totem lost detect
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/end ] >>> 森林信使 施法 結束並重設冷卻 / forest messenger cast end

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
function monsters:chapter_2/forest_messenger/1/1

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_2/forest_messenger/cast/end


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/forest_messenger/1/0

execute \
    if score @s monster.skill.casting matches 1.. run \
function monsters:chapter_2/forest_messenger/1/detect


execute \
    if score @s monster.skill.casting matches 200.. run \
function monsters:chapter_2/forest_messenger/1/1