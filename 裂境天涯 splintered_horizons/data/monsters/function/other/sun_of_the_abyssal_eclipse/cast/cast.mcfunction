# ===================================================
# 暗蝕的烈陽 施法 開始 / sun of the abyssal eclipse cast begin

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/cast ] >>> 暗蝕的烈陽 施法 開始 / sun of the abyssal eclipse cast begin
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main.monster ] >>> 暗蝕的烈陽 本體 冷卻檢查 / sun of the abyssal eclipse self cooldown check
    ## Guide [ function monsters:-init/no_cast ] >>> 永不施放 哨兵值 / no cast sentinel
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/use ] >>> 暗蝕的烈陽 技能1 起手 / sun of the abyssal eclipse skill 1 start

# ===================================================

## ----- Casting begins ----- ##
function monsters:-init/no_cast

# Skills

function monsters:other/sun_of_the_abyssal_eclipse/1/use