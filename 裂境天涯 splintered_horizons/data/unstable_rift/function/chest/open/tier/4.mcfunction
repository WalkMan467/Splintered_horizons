# ===================================================
# 裂境 寶箱 戰利品 t4 / rift chest loot t4

    ## Guide [ function unstable_rift:chest/open/tier/4 ] >>> 裂境 寶箱 戰利品 t4 / rift chest loot t4
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 最高級。音效故意疊三層，開到這一箱要讓人嚇一跳


loot insert ~ ~ ~ loot unstable_rift:chest/t4

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~ ~ 1 0.7
playsound minecraft:ui.toast.challenge_complete voice @a ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.5 0.4 0.4 80 force @a
particle minecraft:end_rod ~ ~1 ~ 0.3 0.4 0.3 0.1 60 force @a
