# ===================================================
# 投擲 玻璃片 效果 / thrown broken glass effect

    ## Guide [ function weapons:type/drop/broken_glass/effect ] >>> 投擲 玻璃片 效果 / thrown broken glass effect
    ## Guide [ function weapons:type/drop/broken_glass/guide ] >>> 投擲 玻璃片 分派 / thrown broken glass dispatch

# ===================================================

damage @s 5 weapons:type/drop/broken_glass/dmg by @p

playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1

particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal