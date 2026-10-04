# ===================================================
# 裂境 寶箱 戰利品 t3 / rift chest loot t3

    ## Guide [ function unstable_rift:chest/open/tier/3 ] >>> 裂境 寶箱 戰利品 t3 / rift chest loot t3
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================


loot insert ~ ~ ~ loot unstable_rift:chest/t3

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate voice @a ~ ~ ~ 0.7 1.4
particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.06 40 force @a
particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.3 25 force @a
