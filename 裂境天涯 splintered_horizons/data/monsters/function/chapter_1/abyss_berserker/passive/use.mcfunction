# ===================================================
# 深淵狂暴者 被動 受擊判定 / abyss berserker passive on hit

    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/use ] >>> 深淵狂暴者 被動 受擊判定 / abyss berserker passive on hit
    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/add ] >>> 深淵狂暴者 被動 累加層數 / abyss berserker passive stack up
    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/broken ] >>> 深淵狂暴者 被動 破防 / abyss berserker passive broken

# ===================================================

#\
{

execute \
    if score @s monster.abyss_berserker.passive.cd matches 1.. run \
return 0

execute \
    if score @s sys.silence matches 1.. run \
return 0


scoreboard players add @s monster.abyss_berserker.passive.hit 0

    # If monster.abyss_berserker.passive.hit > 5;
    execute \
        if score @s monster.abyss_berserker.passive.hit matches ..5 run \
    function monsters:chapter_1/abyss_berserker/passive/add

    # Else;
    execute \
        if score @s monster.abyss_berserker.passive.hit matches 6.. run \
    function monsters:chapter_1/abyss_berserker/passive/broken
#\
}