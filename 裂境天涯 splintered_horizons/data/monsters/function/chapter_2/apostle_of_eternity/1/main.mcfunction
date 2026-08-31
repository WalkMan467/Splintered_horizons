# ===================================================
# 「永劫」的使徒 技能1 分鏡 / apostle of eternity skill 1 timeline

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/1/main ] >>> 「永劫」的使徒 技能1 分鏡 / apostle of eternity skill 1 timeline
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main ] >>> 「永劫」的使徒 主程式 / apostle of eternity main
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/1/0 ] >>> 「永劫」的使徒 技能1 上鎖判定 / apostle of eternity skill 1 lock targets
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/cast/end ] >>> 「永劫」的使徒 施法 結束並重設冷卻 / apostle of eternity cast end

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/apostle_of_eternity/1/0

execute \
    if score @s monster.skill.casting matches 1..100 \
    unless score @p[distance=..4,sort=arbitrary] monster.apostle_of_eternity.lock.timer matches 1.. run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 100.. run \
function monsters:chapter_2/apostle_of_eternity/cast/end