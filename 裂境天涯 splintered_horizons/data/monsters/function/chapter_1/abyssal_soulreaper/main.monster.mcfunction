# ===================================================
# 深淵斷魂者 本體 冷卻檢查 / abyssal soulreaper self cooldown check

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main.monster ] >>> 深淵斷魂者 本體 冷卻檢查 / abyssal soulreaper self cooldown check
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main ] >>> 深淵斷魂者 主程式 / abyssal soulreaper main
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/cast ] >>> 深淵斷魂者 施法 開始 / abyssal soulreaper cast begin

# ===================================================

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_1/abyssal_soulreaper/cast/cast


execute \
    if entity @p[distance=..6] run \
scoreboard players set @s monster.skill.rdm.skill 1