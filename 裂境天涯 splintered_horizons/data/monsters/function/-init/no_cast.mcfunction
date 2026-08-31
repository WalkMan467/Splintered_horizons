# ===================================================
# 永不施放 哨兵值 / no cast sentinel

    ## Guide [ function monsters:-init/no_cast ] >>> 永不施放 哨兵值 / no cast sentinel
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/cast/cast ] >>> 深淵黑騎 施法 開始 / abyssal black knight cast begin
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/cast ] >>> 深淵斷魂者 施法 開始 / abyssal soulreaper cast begin
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/cast ] >>> 深淵射手 施法 開始 / explosion arrow skeleton cast begin
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/cast/cast ] >>> 「永劫」的使徒 施法 開始 / apostle of eternity cast begin
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/cast ] >>> 森林信使 施法 開始 / forest messenger cast begin
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/cast ] >>> 魂之神射手 施法 開始 隨機選技 / soul sharpshooter cast begin
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/cast/cast ] >>> 血滴子蜘蛛 施法 開始 / bloody blade spider cast begin
    ## Guide [ function monsters:chapter_3/corroder/cast/cast ] >>> 腐蝕者 施法 開始 / corroder cast begin
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/cast/cast ] >>> 時空裂痕的使者 施法 開始 / emissary of the temporal rift cast begin
    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/cast/cast ] >>> 災厄之主 施法 開始 隨機選技 / lord of the cataclysm cast begin
    ## Guide [ function monsters:chapter_3/sunfire_emissary/cast/cast ] >>> 烈陽使者 施法 開始 / sunfire emissary cast begin
    ## Guide [ function monsters:other/abyss_crystal/cast/cast ] >>> 深淵水晶 施法 開始 / abyss crystal cast begin
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/cast ] >>> 暗蝕的烈陽 施法 開始 / sun of the abyssal eclipse cast begin

# ===================================================

scoreboard players set @s monster.skill.casting 0

# 「永不施放」的哨兵值 刻意留 1.4 億的餘裕給暫停時的 at += 1，避免整數溢位；
# main.mcfunction 的推進也有 ..1999999999 的上界保護 
scoreboard players set @s monster.skill.cast.at 2000000000
