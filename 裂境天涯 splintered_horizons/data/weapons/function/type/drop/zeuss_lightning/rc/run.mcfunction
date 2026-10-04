# ===================================================
# 投擲 宙斯閃電 右鍵 執行 / thrown zeuss lightning right click run

    ## Guide [ function weapons:type/drop/zeuss_lightning/rc/run ] >>> 投擲 宙斯閃電 右鍵 執行 / thrown zeuss lightning right click run
    ## Guide [ function weapons:type/drop/zeuss_lightning/lightning/summon ] >>> 投擲 宙斯閃電 lightning 召喚 / thrown zeuss lightning lightning summon
    ## Guide [ function weapons:type/drop/zeuss_lightning/rc/main ] >>> 投擲 宙斯閃電 右鍵 主迴圈 / thrown zeuss lightning right click loop

# ===================================================

function weapons:type/drop/zeuss_lightning/lightning/summon

particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0 0 0 0 1 normal @a
particle dust{color:[1.000,0.000,0.000],scale:1.5} ~ ~1 ~ 1 1 1 0 20 normal @a

playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.5