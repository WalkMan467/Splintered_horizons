# ===================================================
# 追魂體 移除 特效 / ghost key remove fx

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/1 ] >>> 追魂體 移除 特效 / ghost key remove fx
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/guide ] >>> 追魂體 追蹤與判定 / ghost key track and check
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/on_hit_player ] >>> 追魂體 命中玩家 / ghost key hit player
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/main ] >>> 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/kill ] >>> 魂之神射手 死亡 清除魂鑰 / soul sharpshooter on kill clear keys
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/2 ] >>> 追魂體 移除 遞迴清乘客 / ghost key remove passengers

# ===================================================

particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.allay.death voice @a ~ ~1 ~ 1 2
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 20

function monsters:chapter_2/soul_sharpshooter/2/key/remove/2