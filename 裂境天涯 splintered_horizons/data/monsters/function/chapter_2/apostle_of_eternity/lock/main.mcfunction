# ===================================================
# 時空鎖 逐 tick 倒數 / time lock tick

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/lock/main ] >>> 時空鎖 逐 tick 倒數 / time lock tick
    ## Guide [ function monsters:load ] >>> 怪物 載入 / monsters load
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/lock/broken ] >>> 時空鎖 解除 / time lock release

# ===================================================

schedule function monsters:chapter_2/apostle_of_eternity/lock/main 1t

execute \
    as @a \
    unless entity @s[tag=monster.apostle_of_eternity.lock] run \
return fail

execute \
    as @a at @s \
    unless score @s monster.apostle_of_eternity.lock.timer matches 0.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/lock/broken

scoreboard players remove @a monster.apostle_of_eternity.lock.timer 1