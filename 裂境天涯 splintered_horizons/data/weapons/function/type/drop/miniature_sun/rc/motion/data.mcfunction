# ===================================================
# 投擲 微型太陽 右鍵 位移 資料 / thrown miniature sun right click motion data

    ## Guide [ function weapons:type/drop/miniature_sun/rc/motion/data ] >>> 投擲 微型太陽 右鍵 位移 資料 / thrown miniature sun right click motion data
    ## Guide [ function players:detect/changed_dimension ] >>> 偵測 changed dimension / detect changed dimension
    ## Guide [ function weapons:type/drop/miniature_sun/rc/motion/use ] >>> 投擲 微型太陽 右鍵 位移 觸發 / thrown miniature sun right click motion activate

# ===================================================

#載入區塊，確保效果雲不會消失：
forceload add -1 -1 0 0

#生成目標點(object)：
summon area_effect_cloud 0.0 600.0 0.0 {UUID:[I; 10, 0 ,1 ,2],Tags:["throwing.motion"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:2147483647}