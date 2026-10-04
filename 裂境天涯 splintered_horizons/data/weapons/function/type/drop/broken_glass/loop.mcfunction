# ===================================================
# 投擲 玻璃片 迴圈 / thrown broken glass loop

    ## Guide [ function weapons:type/drop/broken_glass/loop ] >>> 投擲 玻璃片 迴圈 / thrown broken glass loop
    ## Guide [ function weapons:type/drop/broken_glass/guide ] >>> 投擲 玻璃片 分派 / thrown broken glass dispatch
    ## Guide [ function weapons:type/drop/broken_glass/rc/use ] >>> 投擲 玻璃片 右鍵 觸發 / thrown broken glass right click activate

# ===================================================


execute \
    as @e[tag=broken_glass.effect] at @s run \
function weapons:type/drop/broken_glass/guide


execute \
    if entity @e[tag=broken_glass.effect] run \
schedule function weapons:type/drop/broken_glass/loop 1t