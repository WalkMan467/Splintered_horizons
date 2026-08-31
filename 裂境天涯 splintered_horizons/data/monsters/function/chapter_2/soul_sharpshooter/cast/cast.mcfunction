# ===================================================
# 魂之神射手 施法 開始 隨機選技 / soul sharpshooter cast begin

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/cast ] >>> 魂之神射手 施法 開始 隨機選技 / soul sharpshooter cast begin
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main.monster ] >>> 魂之神射手 本體 冷卻檢查 / soul sharpshooter self cooldown check
    ## Guide [ function monsters:-init/no_cast ] >>> 永不施放 哨兵值 / no cast sentinel
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/1/use ] >>> 魂之神射手 技能1 起手 / soul sharpshooter skill 1 start
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/use ] >>> 魂之神射手 技能2 起手 / soul sharpshooter skill 2 start

# ===================================================

## ----- Casting begins ----- ##
function monsters:-init/no_cast

# Skill
execute \
    if score @s monster.skill.rdm.skill matches 1 run \
function monsters:chapter_2/soul_sharpshooter/1/use

execute \
    if score @s monster.skill.rdm.skill matches 2 run \
function monsters:chapter_2/soul_sharpshooter/2/use