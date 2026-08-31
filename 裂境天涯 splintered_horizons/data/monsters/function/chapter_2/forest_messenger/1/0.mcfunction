# ===================================================
# 森林信使 技能1 生成繭 / forest messenger skill 1 spawn cocoon

    ## Guide [ function monsters:chapter_2/forest_messenger/1/0 ] >>> 森林信使 技能1 生成繭 / forest messenger skill 1 spawn cocoon
    ## Guide [ function monsters:chapter_2/forest_messenger/1/main ] >>> 森林信使 技能1 分鏡 / forest messenger skill 1 timeline
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/summon ] >>> 繭 生成 / cocoon summon

# ===================================================

function monsters:chapter_2/forest_messenger/cocoon/summon

item replace entity @s weapon.offhand with totem_of_undying[item_model="air"]

team join glow.gold
effect give @s glowing 10 0 true