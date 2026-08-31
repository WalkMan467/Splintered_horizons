# ===================================================
# 暗蝕的烈陽 本體 冷卻檢查 / sun of the abyssal eclipse self cooldown check

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main.monster ] >>> 暗蝕的烈陽 本體 冷卻檢查 / sun of the abyssal eclipse self cooldown check
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/cast/cast ] >>> 暗蝕的烈陽 施法 開始 / sun of the abyssal eclipse cast begin

# ===================================================

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:other/sun_of_the_abyssal_eclipse/cast/cast