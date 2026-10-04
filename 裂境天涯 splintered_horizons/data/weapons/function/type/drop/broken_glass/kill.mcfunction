# ===================================================
# 投擲 玻璃片 擊殺 / thrown broken glass on kill

    ## Guide [ function weapons:type/drop/broken_glass/kill ] >>> 投擲 玻璃片 擊殺 / thrown broken glass on kill
    ## Guide [ function weapons:type/drop/broken_glass/guide ] >>> 投擲 玻璃片 分派 / thrown broken glass dispatch

# ===================================================

particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1
kill @s