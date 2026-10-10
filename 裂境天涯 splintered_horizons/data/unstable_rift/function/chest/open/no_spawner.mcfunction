# ===================================================
# 裂境 寶箱 沒有生怪磚 / no spawner in range

    ## Guide [ function unstable_rift:chest/open/no_spawner ] >>> 裂境 寶箱 沒有生怪磚 / no spawner in range
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score
    ## Guide [ function unstable_rift:chest/remove ] >>> 裂境 寶箱 解除註冊 / unregister the rift chest

# ===================================================

# 執行者是寶箱的紀錄點 marker
#
# 這一格 8 格內沒有生怪磚的重建點，所以它不是裂境寶箱，不該出戰利品。
# 但「安靜的全空」跟「壞掉」從玩家這邊看起來一模一樣，所以建圖時給個提示
#
# 只講給創造模式的人聽 —— 生存玩家開自己家的箱子不該看到這行


execute \
    unless entity @p[gamemode=creative,distance=..8] run \
return 0

title @p actionbar [{"text":"[","color":"white"},{"text":"※","color":"#b96cff"},{"text":"] ","color":"white"},{"translate":"unstable_rift.chest.no_spawner","fallback":"這個箱子 8 格內沒有裂境生怪磚，不會出戰利品","color":"gray"}]

playsound minecraft:block.note_block.bass voice @p ~ ~ ~ 0.5 0.6
