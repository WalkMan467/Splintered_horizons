# ===================================================
# 永不施放 哨兵值 / no cast sentinel

    ## Guide [ function monsters:-init/no_cast ] >>> 永不施放 哨兵值 / no cast sentinel
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/cast/cast ] >>> 深淵黑騎 施法 開始 / abyssal black knight cast begin
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/cast ] >>> 深淵斷魂者 施法 開始 / abyssal soulreaper cast begin
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/cast ] >>> 深淵射手 施法 開始 / explosion arrow skeleton cast begin
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_3/corroder/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/cast ] >>> cast
    ## Guide [ function monsters:chapter_3/sunfire_emissary/cast/cast ] >>> cast
    ## Guide [ function monsters:other/abyss_crystal/cast/cast ] >>> cast
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/cast ] >>> cast

# ===================================================

scoreboard players set @s monster.skill.casting 0

# 「永不施放」的哨兵值 刻意留 1.4 億的餘裕給暫停時的 at += 1，避免整數溢位；
# main.mcfunction 的推進也有 ..1999999999 的上界保護 
scoreboard players set @s monster.skill.cast.at 2000000000
