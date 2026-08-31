# ===================================================
# 深淵水晶 本體 冷卻與受擊 / abyss crystal self tick

    ## Guide [ function monsters:other/abyss_crystal/main.monster ] >>> 深淵水晶 本體 冷卻與受擊 / abyss crystal self tick
    ## Guide [ function monsters:other/abyss_crystal/main ] >>> 深淵水晶 主程式 / abyss crystal main
    ## Guide [ function monsters:other/abyss_crystal/cast/cast ] >>> 深淵水晶 施法 開始 / abyss crystal cast begin
    ## Guide [ function monsters:other/abyss_crystal/state/on_hurt ] >>> 深淵水晶 受擊 反饋 / abyss crystal on hurt feedback

# ===================================================

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:other/abyss_crystal/cast/cast


execute \
    if data entity @s {HurtTime:10s} run \
function monsters:other/abyss_crystal/state/on_hurt