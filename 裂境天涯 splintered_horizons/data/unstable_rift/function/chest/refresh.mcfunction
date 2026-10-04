# ===================================================
# 裂境 寶箱 刷新 / refresh the rift chest

    ## Guide [ function unstable_rift:chest/refresh ] >>> 裂境 寶箱 刷新 / refresh the rift chest
    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行者是寶箱的紀錄點 marker，位置就是寶箱那一格
#
# 由 unstable_rift:spawner/respawn/rebuild 在生怪磚重建的那一 tick 叫進來，
# 所以寶箱跟生怪磚是同一刻刷新的。8 格內沒有生怪磚的寶箱不會被刷
#
# 這套不重建箱子方塊，只清內容 —— 方塊的 facing 是方塊狀態不是方塊實體資料，
# 存不進 marker，硬要重建會變成朝向跑掉。箱子被挖掉的話紀錄點會留著等，
# 原地放一個新箱子就會重新接上


execute \
    unless block ~ ~ ~ minecraft:chest run \
return 0

# 容器的 NBT 鍵在 26.3 還是大寫 Items（查過 ContainerHelper 的常數池）

data modify block ~ ~ ~ Items set value []

# 連沒開過的也一起歸零：整組遭遇重置，不是只重置箱子

scoreboard players set @s unstable_rift.chest.score 0

tag @s remove unstable_rift.chest.opened

playsound minecraft:block.amethyst_block.break voice @a ~ ~ ~ 0.4 1.5
particle minecraft:squid_ink ~ ~0.8 ~ 0.3 0.2 0.3 0.04 15 force @a
