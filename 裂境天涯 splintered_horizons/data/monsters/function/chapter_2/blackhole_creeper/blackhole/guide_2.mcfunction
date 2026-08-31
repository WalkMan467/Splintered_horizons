# ===================================================
# 黑洞 傷害判定 / blackhole damage tick

    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/guide_2 ] >>> 黑洞 傷害判定 / blackhole damage tick
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/main_2 ] >>> 黑洞 傷害排程 / blackhole damage scheduler
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/range_2 ] >>> 黑洞 傷害範圍特效 / blackhole damage range fx

# ===================================================

function monsters:chapter_2/blackhole_creeper/blackhole/range_2

execute \
    unless score #nightmare main.difficulty matches 1 \
    if score @s duration matches 10..21 \
    as @a[sort=arbitrary,distance=..6] run \
damage @s 1 monsters:chapter_2/blackhole_creeper/damage

execute \
    if score #nightmare main.difficulty matches 1.. \
    if score @s duration matches 1..21 \
    as @a[sort=arbitrary,distance=..6] run \
damage @s 1 monsters:chapter_2/blackhole_creeper/damage