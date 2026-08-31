# ===================================================
# 森林信使 切換遠程武器 / forest messenger switch to ranged

    ## Guide [ function monsters:chapter_2/forest_messenger/remote/use ] >>> 森林信使 切換遠程武器 / forest messenger switch to ranged
    ## Guide [ function monsters:chapter_2/forest_messenger/main.monster ] >>> 森林信使 本體 冷卻與武器切換 / forest messenger self tick

# ===================================================

execute \
    if entity @s[tag=monster.forest_afterimage.remote] run \
return 0

tag @s remove monster.forest_afterimage.melee

item replace entity @s weapon.mainhand with bow[enchantments={power:2}]

tag @s add monster.forest_afterimage.remote