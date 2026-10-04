# ===================================================
# 裂境 生怪磚 還原方塊 / restore the spawner block

    ## Guide [ function unstable_rift:spawner/respawn/rebuild.guide ] >>> 裂境 生怪磚 還原方塊 / restore the spawner block
    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner

# ===================================================

# $(spawner) 會被展開成存檔那一份方塊實體 NBT，等同於手寫 setblock ... minecraft:spawner{...}


$setblock ~ ~ ~ minecraft:spawner$(spawner)

# 保險：不管存檔裡原本是多少，放回來的生怪磚 Delay 一律 0s

data modify block ~ ~ ~ Delay set value 0s
