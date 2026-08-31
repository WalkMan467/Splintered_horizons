# ===================================================
# 黑洞 傷害範圍特效 / blackhole damage range fx

    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/range_2 ] >>> 黑洞 傷害範圍特效 / blackhole damage range fx
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/guide_2 ] >>> 黑洞 傷害判定 / blackhole damage tick

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust{color:[1.000,0.000,0.000],scale:0.75} ^ ^ ^6 0 0 0 0 0 normal

execute rotated ~3 0 run function monsters:chapter_2/blackhole_creeper/blackhole/range_2