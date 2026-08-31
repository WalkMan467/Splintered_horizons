# ===================================================
# 清除怪物圖鑑 / remove monsters icon

    ## Guide [ function monsters:remove_monsters_icon ] >>> 清除怪物圖鑑 / remove monsters icon
    ## Guide [ function players:default ] >>> default
    ## Guide [ function players:setup ] >>> setup

# ===================================================

advancement grant @s only monsters:icon/icon

    advancement grant @s only monsters:icon/chapter_1/icon

        advancement revoke @s only monsters:icon/chapter_1/abyss_swordsman
        advancement revoke @s only monsters:icon/chapter_1/void_shadow
        advancement revoke @s only monsters:icon/chapter_1/elite_abyss_swordsman
        advancement revoke @s only monsters:icon/chapter_1/abyss_berserker
        advancement revoke @s only monsters:icon/chapter_1/explosion_arrow_skeleton
        advancement revoke @s only monsters:icon/chapter_1/abyssal_soulreaper