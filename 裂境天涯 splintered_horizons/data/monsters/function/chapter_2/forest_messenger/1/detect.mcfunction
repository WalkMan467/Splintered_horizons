# ===================================================
# 森林信使 技能1 圖騰被打掉偵測 / forest messenger skill 1 totem lost detect

    ## Guide [ function monsters:chapter_2/forest_messenger/1/detect ] >>> 森林信使 技能1 圖騰被打掉偵測 / forest messenger skill 1 totem lost detect
    ## Guide [ function monsters:chapter_2/forest_messenger/1/main ] >>> 森林信使 技能1 分鏡 / forest messenger skill 1 timeline
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/end ] >>> 森林信使 施法 結束並重設冷卻 / forest messenger cast end

# ===================================================

execute \
    if entity @s[tag=chapter_2.forest_messenger.1] \
    unless items entity @s weapon.offhand totem_of_undying run \
tag @s add monster.forest_messenger.1.actived

execute \
    if entity @s[tag=chapter_2.forest_messenger.1] \
    unless items entity @s weapon.offhand totem_of_undying run \
function monsters:chapter_2/forest_messenger/cast/end